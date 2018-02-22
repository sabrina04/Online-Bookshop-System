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

public partial class Password_Change_User : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    int j = 0;
    int flag;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["redirectto"] = "flaseredirect";
        if (!Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            flag = 0;
            Session["redirectto"] = "trueredirect";
            Session["mypage"] = "User_Home.aspx";
            Response.Redirect("Signin.aspx");
        }
        flag = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 0;
        if (!TextBox1.Text.Equals(Session["user"].ToString()))
        {
            Label6.Text = "Invalid email address!";
            Label6.Visible = true;
            i = 1;
        }
        if (!TextBox3.Text.Equals(TextBox4.Text))
        {
            Label6.Text = "Password does not match.";
            Label6.Visible = true;
            i = 1;
        }
        try
        {
            this.oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            this.oc.Open();
            this.com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String p = "";
        String pass = "select password_ from customer where email_add='" + Session["user"].ToString() + "'";
        try
        {
            this.com.CommandText = pass;
            p = Convert.ToString(com.ExecuteScalar());
        }
        catch (Exception ll) { }
        if (!TextBox2.Text.Equals(p))
        {
            Label6.Text = "Invalid password";
            Label6.Visible = true;
            i = 1;
        }
        if (i == 0)
        {
            pass = "update customer set password_='" + TextBox3.Text + "' where email_add='" + Session["user"].ToString() + "'";
            try
            {
                this.com = oc.CreateCommand();
                this.com.CommandText = pass;
                j = com.ExecuteNonQuery();
            }
            catch (Exception k) { }
            oc.Close();
            Session["edituser"] = "truedit";
            Session["number"] = j.ToString();
            Response.Redirect("User_Home.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Home.aspx");
    }
}
