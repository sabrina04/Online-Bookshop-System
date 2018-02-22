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

public partial class shop_reg_success : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Your shop ID is -- "+Session["Shopid"].ToString();
    }
    protected void backhome_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
   
}
