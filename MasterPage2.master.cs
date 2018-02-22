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

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            Response.Redirect("Signin.aspx");
        }
        
        String lab = Session["shoplogonname"].ToString();
        String ss = Session["shopuser"].ToString();
        sname_label.Text = ss;
        Label2.Text = lab;   
    }
    
    protected void order_button_Click1(object sender, EventArgs e)
    {
        Response.Redirect("BookShopsHome.aspx");
    }
    protected void addbook_button_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AddBook.aspx");
    }
    protected void updatebook_button_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UpdateBook.aspx");
    }
    protected void deletebook_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_Book.aspx");
    }
    protected void viewsale_button_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Sale_Info.aspx");
    }
    protected void signoutshop_link_Click(object sender, EventArgs e)
    {
        Session["ShopLoggedin"] = "FalseShop";
        Response.Redirect("Home.aspx");
    }
    
}
