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

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //String admin = Session["AdminLoggedin"].ToString();
        admin_label.Text = Session["adminuser"].ToString();
    }
    
    protected void pendingshop_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pending_Shop.aspx");
    }
    protected void deleteshop_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_Shop.aspx");
    }
    protected void activateshop_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("Activate_Shop.aspx");
    }
    protected void updatepay_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update_Payment.aspx");
    }
    protected void admin_signout_linkbutton_Click(object sender, EventArgs e)
    {
        Session["AdminLoggedin"] = "FalseAdmin";
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Shop_Pay_Info.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Shop_Pay_Info.aspx");
    }
}
