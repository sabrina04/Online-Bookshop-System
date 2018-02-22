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

public partial class Register_user : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (fname_textbox.Text.Equals("") || lname_textbox.Text.Equals("") || address_textbox.Text.Equals("") || username_textbox.Text.Equals("") || password_textbox.Equals("") || retypepass_textbox.Text.Equals(""))
        {
            Response.Redirect("Register_user.aspx");
        }
        if (!password_textbox.Text.Equals(retypepass_textbox.Text))
        {
            Response.Redirect("Register_user.aspx");
        }
        int i = 0;
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        try
        {
            com.CommandText = "insert_customer";
            com.CommandType = CommandType.StoredProcedure;

            OracleParameter p1 = new OracleParameter("cfname", OracleType.VarChar, 30);
            com.Parameters.Add(p1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = fname_textbox.Text;

            OracleParameter p2 = new OracleParameter("clname", OracleType.VarChar, 30);
            com.Parameters.Add(p2);
            p2.Direction = ParameterDirection.Input;
            p2.Value = lname_textbox.Text;

            OracleParameter p3 = new OracleParameter("mailadd", OracleType.VarChar, 30);
            com.Parameters.Add(p3);
            p3.Direction = ParameterDirection.Input;
            p3.Value = username_textbox.Text;

            OracleParameter p4 = new OracleParameter("pass", OracleType.VarChar, 30);
            com.Parameters.Add(p4);
            p4.Direction = ParameterDirection.Input;
            p4.Value = password_textbox.Text;

            OracleParameter p5 = new OracleParameter("addr", OracleType.VarChar, 80);
            com.Parameters.Add(p5);
            p5.Direction = ParameterDirection.Input;
            p5.Value = address_textbox.Text;

            OracleParameter p6 = new OracleParameter("phone", OracleType.VarChar, 40);
            com.Parameters.Add(p6);
            p6.Direction = ParameterDirection.Input;
            p6.Value = contact_textbox.Text;

            OracleParameter p7 = new OracleParameter("ccno", OracleType.VarChar, 30);
            com.Parameters.Add(p7);
            p7.Direction = ParameterDirection.Input;
            p7.Value = ccno_textbox.Text;

            OracleParameter p8 = new OracleParameter("cccom", OracleType.VarChar, 30);
            com.Parameters.Add(p8);
            p8.Direction = ParameterDirection.Input;
            p8.Value = cccom_textbox.Text;

            i = com.ExecuteNonQuery();
        }
        catch (Exception er) { }
        if (i == 0)
            Label16.Visible = true;
        else
        {
            Session["Loggedin"] = "True";
            Session["user"] = username_textbox.Text;
            if (Convert.ToString(Session["cartstat"]).Equals("on"))
            {
                Response.Redirect("Confirm_Order.aspx");
            }
            Response.Redirect("Home.aspx");
            oc.Close();
        }
    }
}
