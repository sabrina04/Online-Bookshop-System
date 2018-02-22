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

public partial class Order_History : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataTable db;
    int flag;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["redirectto"] = "flaseredirect";
        if (!Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            flag = 0;
            Session["redirectto"]="trueredirect";
            Session["mypage"] = "User_Home.aspx";
            Response.Redirect("Signin.aspx");
        }
        flag = 1;
        try
        {
            this.oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            this.oc.Open();
            this.com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        int k = 0;
        String query = "select title,book.isbn,quantity,total,name,order_date,books_from.status from book,books_from,cart,shop where books_from.email_add='" + Session["user"].ToString()+"' and book.isbn=books_from.isbn and books_from.email_add=cart.email_add and books_from.shop_id=shop.shop_id and books_from.cart_id=cart.cart_id";
        try
        {
            this.com.CommandText = query;
            this.com.CommandType = CommandType.Text;
            this.adap = new OracleDataAdapter(com);
            this.db = new DataTable();
            this.adap.Fill(db);
            k = db.Rows.Count;
            GridView1.DataSource = db;
            GridView1.DataBind();
        }
        catch (Exception eee) { }
        if (k == 0)
            Label2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Loggedin"] = "False";
        Response.Redirect("Home.aspx");
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }
}
