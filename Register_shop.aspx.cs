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

public partial class Register_shop : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private OracleDataReader dr;
    private DataSet ds;

    String s;
    String id;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_button_Click(object sender, EventArgs e)
    {
        if (sname_textbox.Text.Equals("") || addr_textbox.Text.Equals("") || password_textbox1.Equals("") || retype_textbox.Text.Equals(""))
        {
            Response.Redirect("Register_shop.aspx");
        }
        if (!password_textbox1.Text.Equals(retype_textbox.Text))
        {
            Response.Redirect("Register_shop.aspx");
        }
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();

        }
        catch (Exception ee) { }
        String result="";
        try
        {
            com.CommandText = "insert_new_shop";
            com.CommandType = CommandType.StoredProcedure;

            OracleParameter p1 = new OracleParameter("s_name", OracleType.VarChar, 30);
            com.Parameters.Add(p1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = sname_textbox.Text;

            OracleParameter p2 = new OracleParameter("password1", OracleType.VarChar, 20);
            com.Parameters.Add(p2);
            p2.Direction = ParameterDirection.Input;
            p2.Value = password_textbox1.Text;

            OracleParameter p3 = new OracleParameter("address1", OracleType.VarChar, 150);
            com.Parameters.Add(p3);
            p3.Direction = ParameterDirection.Input;
            p3.Value = addr_textbox.Text;

            OracleParameter p4 = new OracleParameter("phno", OracleType.VarChar, 60);
            com.Parameters.Add(p4);
            p4.Direction = ParameterDirection.Input;
            p4.Value = cont_textbox.Text;

            OracleParameter p5 = new OracleParameter("s_num",OracleType.VarChar,20);
            com.Parameters.Add(p5);
            p5.Direction = ParameterDirection.ReturnValue;

            com.ExecuteScalar();
            result = p5.Value.ToString();
   
        }
        catch (Exception er)
        { }
        Session["Shopid"] = result;
        Response.Redirect("shop_reg_success.aspx");
        oc.Close();
        
    }

}
