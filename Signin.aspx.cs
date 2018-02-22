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

public partial class Signin : System.Web.UI.Page
{
    private OracleConnection oc; 
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;

    String s;
    String pass;
    public String p;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Register_user.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String t = type.Text;
        if (t.Equals("Customer"))
        {
            s = "select password_ from customer where email_add='" + email_textbox.Text + "'";
        }
        else if (t.Equals("Bookshop"))
        {
            s = "select password_ from shop where shop_id='" + email_textbox.Text + "' and status='active'";
        }
        else 
        {
            s = "select password1 from administrator where username='" + email_textbox.Text + "'";
        }
        try
        {
            this.com.CommandText = s;
            pass = Convert.ToString(com.ExecuteScalar());
        }
        catch (Exception eee) { }

        if (pass.Equals(password_textbox.Text))
        {
            if (t.Equals("Customer"))
            {
                Session["Loggedin"] = "True";
                Session["user"] = email_textbox.Text;
                if (Convert.ToString(Session["cartstat"]).Equals("on"))
                {
                    Session["cartstat"] = "offcart";
                    Response.Redirect("Confirm_Order.aspx");

                }
                else if (Convert.ToString(Session["redirectto"]).Equals("trueredirect"))
                {
                    String l = Session["mypage"].ToString();
                    Response.Redirect(l);
                }
                
                else
                {
                    p = Session["path"].ToString();
                    Response.Redirect(p);
                }
            }
            else if (t.Equals("Bookshop"))
            {
                int p = 0;
                String cc = DateTime.Now.ToShortDateString();
                String w = "update shop set logon_date=to_date('" + cc + "','mm/dd/yyyy') where shop_id='" + email_textbox + "'";
                try
                {
                    com = oc.CreateCommand();
                    this.com.CommandText = w;
                    p = com.ExecuteNonQuery();
                }
                catch(Exception ex){}
                if (p == 0) 
                {
                    Label8.Visible = true;
                }
                w = "select name from shop where shop_id='"+email_textbox.Text+"'";
                try
                {
                    com = oc.CreateCommand();
                    this.com.CommandText = w;
                    pass = Convert.ToString(com.ExecuteScalar());
                }
                catch (Exception eex) { }
                if (Convert.ToString(Session["backto"]).Equals("truebackto"))
                {
                    Session["ShopLoggedin"] = "TrueShop";
                    Session["shoplogonname"] = pass;
                    Session["shopuser"] = email_textbox.Text;
                    String z = Session["takemeto"].ToString();
                    Response.Redirect(z);
                }
                Session["ShopLoggedin"] = "TrueShop";
                Session["shoplogonname"] = pass;
                Session["shopuser"] = email_textbox.Text;
                Response.Redirect("BookShopsHome.aspx");
            }
            else
            {
                if (Convert.ToString(Session["backtoadmin"]).Equals("truebacktoadmin"))
                {
                    Session["AdminLoggedin"] = "TrueAdmin";
                    Session["adminuser"] = email_textbox.Text;
                    String zz = Session["takemetoadmin"].ToString();
                    Response.Redirect(zz);
                }
                Session["AdminLoggedin"] = "TrueAdmin";
                Session["adminuser"] = email_textbox.Text;
                Response.Redirect("Pending_Shop.aspx");
            }
        }
        else
        {
            invalid_label.Visible = true;
        }
        oc.Close();
        
    }
}
