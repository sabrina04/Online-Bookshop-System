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

public partial class MasterPage1 : System.Web.UI.MasterPage
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    public String log;
    public String s;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            this.oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            this.oc.Open();
            this.com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String q = "select distinct category_ from book";
        try
        {
            this.com.CommandText = q;
            this.com.CommandType = CommandType.Text;
            this.adap = new OracleDataAdapter(com);
            this.ds = new DataSet();
            this.adap.Fill(ds);
            catlist.DataSource = ds;
            catlist.DataBind();
        }
        catch (Exception eee) { }
        if (!Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            signin_link.Visible = true;
            user_register_link.Visible = true;
            user_link.Visible = false;
            signout_link.Visible = false;
        }
        else 
        {
            signin_link.Visible = false;
            user_register_link.Visible = false;
            log = Session["user"].ToString();
            user_link.Visible = true;
            user_link.Text = log;
            signout_link.Visible = true;
        }
    }
    protected void catlist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            DataSet ds1 = (DataSet)catlist.DataSource;
            s = ds1.Tables[0].Rows[e.Item.ItemIndex]["category_"].ToString();
            Session["browsetype"] = "Category";
            Session["bname"] = s;
            Response.Redirect("result_type.aspx");
        }
    }
    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void title_Click(object sender, EventArgs e)
    {
        Response.Redirect("title.aspx");
    }
    protected void author_Click(object sender, EventArgs e)
    {
        Response.Redirect("author.aspx");
    }
    protected void pub_Click(object sender, EventArgs e)
    {
        Response.Redirect("publisher.aspx");
    }
    protected void shop_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookshop.aspx");
    }
    protected void vrshop_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookshop.aspx");
    }
   
    protected void go_Click(object sender, ImageClickEventArgs e)
    {
        Session["Title"] = search.Text;
        Session["By"] = list.Text;
        Response.Redirect("Result.aspx");
    }

    protected void rsbookshop_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register_shop.aspx");
    }
    protected void advnsrch_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Advanced_search.aspx");
    }
    protected void user_register_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register_user.aspx");
    }
    protected void signin_link_Click(object sender, EventArgs e)
    {
        String cur = Request.CurrentExecutionFilePath.ToString();
        Session["path"] = cur;
        Response.Redirect("Signin.aspx");
    }

    protected void signout_link_Click(object sender, EventArgs e)
    {
        Session["Loggedin"] = "False";
        signin_link.Visible = true;
        user_register_link.Visible = true;
        user_link.Visible = false;
        signout_link.Visible = false;
        
        if (Convert.ToString(Session["iscart"]).Equals("truecart"))
        {
            ShoppingCart s = (ShoppingCart)Session["cartobj"];
            s.Items.Clear();
            Session["iscart"] = "falsecart";
            Session["cartstat"] = "offcart";
        }       
    }
    protected void featured_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("Featured_Books.aspx");
    }
    protected void user_link_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_Cart.aspx");
    }
    private void Page_Unload()
    {
        try
        {
            oc.Close();
        }
        catch (Exception ef) { }
    }
    protected void catlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
}
