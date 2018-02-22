using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Data.OracleClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;

public partial class Confirm_Order : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void continue_button_Click(object sender, EventArgs e)
    {
        if (delivery_address.Text.Equals("") || cccom_text.Text.Equals("") || credit_no_text.Text.Equals(""))
        {
            Label1.Visible = true;
        }
        else
        {
            try
            {
                oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
                oc.Open();
                com = oc.CreateCommand();
            }
            catch (Exception ee) { }
            try
            {
                com.CommandText = "update_customer";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("addr", OracleType.VarChar, 80);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = delivery_address.Text;

                OracleParameter p2 = new OracleParameter("cccom", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = cccom_text.Text;

                OracleParameter p3 = new OracleParameter("ccno", OracleType.VarChar, 30);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = credit_no_text.Text;

                OracleParameter p4 = new OracleParameter("mailadd", OracleType.VarChar, 30);
                com.Parameters.Add(p4);
                p4.Direction = ParameterDirection.Input;
                p4.Value = Session["user"].ToString();

                int i = com.ExecuteNonQuery();
            }
            catch (Exception j) { }

            oc.Close();

            Response.Redirect("Finish.aspx");
        }
    }
}
