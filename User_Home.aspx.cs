using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;

public partial class User_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String log = Session["user"].ToString();
        Label2.Text = log;
        if (Convert.ToString(Session["edituser"]).Equals("truedit"))
        {
            String d = Session["number"].ToString();
            int i = int.Parse(d);
            if (i != 0)
            {
                Label4.Text = "Your password has been changed.";
                Label4.Visible = true;
            }
            else
            {
                Label4.Text = "ERROR";
                Label4.Visible = true;
            }
            Session["edituser"] = "falseedit";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Password_Change_User.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Order_History.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["Loggedin"] = "False";
        Response.Redirect("Home.aspx");
    }
}
