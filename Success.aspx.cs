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

public partial class Success : System.Web.UI.Page
{
    int flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backto"] = "flasebackto";
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            flag = 0;
            Session["backto"] = "truebackto";
            Session["takemeto"] = "AddBook.aspx";
            Response.Redirect("Signin.aspx");
        }
        String ival = Session["ivalue"].ToString();
        int i = int.Parse(ival);
        if (i != 0)
        {
            Label1.Text = "The book has been successfully added to your shop.";
        }
        else {
            Label1.Text = "Error!!!";
        }
        flag = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBook.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookShopsHome.aspx");
    }
}
