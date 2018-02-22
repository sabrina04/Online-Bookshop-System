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

public partial class Advanced_search : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["title"] = title_textbox.Text;
        Session["author"] = author_textbox.Text;
        Session["publisher"] = publisher_textbox.Text;
        Session["year"] = year_textbox.Text;
        Session["Order"] = sortlist.Text;

        Response.Redirect("Advanced_search_result.aspx");
    }
}
