using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Data.OracleClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;

public partial class Sale_Info : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    int flag;
    String value;
    String query;
    String shopid;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backto"] = "flasebackto";
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            flag = 0;
            Session["backto"] = "truebackto";
            Session["takemeto"] = Request.CurrentExecutionFilePath.ToString();
            Response.Redirect("Signin.aspx");
        }     
        shopid = Session["shopuser"].ToString();
        flag = 1;
    }
    protected void view_button_Click(object sender, EventArgs e)
    {
        String startdate = "";
        String enddate = "";
        value = DropDownList1.SelectedValue;
        startdate = DateTime.Now.ToShortDateString();
        DateTime cur = DateTime.Now;
        if (value.Equals("Today"))
        {            
            TimeSpan n=new TimeSpan(0,0,0,0);
            DateTime pr = cur.Subtract(n);
            enddate = pr.ToShortDateString();
            query = "select saling_date,title,books_from.isbn,fname,lname,quantity,total from books_from,book,customer where shop_id='" + shopid + "' and book.isbn=books_from.isbn and customer.email_add=books_from.email_add and saling_date between to_date('" + enddate + "','mm/dd/yyyy') and to_date('" + startdate + "','mm/dd/yyyy')";
        }
        else if (value.Equals("Last 7 days"))
        {
            TimeSpan n = new TimeSpan(7, 0, 0, 0);
            DateTime pr = cur.Subtract(n);
            enddate = pr.ToShortDateString();
            query = "select saling_date,title,books_from.isbn,fname,lname,quantity,total from books_from,book,customer where shop_id='" + shopid + "' and book.isbn=books_from.isbn and customer.email_add=books_from.email_add and saling_date between to_date('" + enddate + "','mm/dd/yyyy') and to_date('" + startdate + "','mm/dd/yyyy')";
        }
        else if (value.Equals("Last 15 days"))
        {
            TimeSpan n = new TimeSpan(15, 0, 0, 0);
            DateTime pr = cur.Subtract(n);
            enddate = pr.ToShortDateString();
            query = "select saling_date,title,books_from.isbn,fname,lname,quantity,total from books_from,book,customer where shop_id='" + shopid + "' and book.isbn=books_from.isbn and customer.email_add=books_from.email_add and saling_date between to_date('" + enddate + "','mm/dd/yyyy') and to_date('" + startdate + "','mm/dd/yyyy')";
        }
        else
        {
            TimeSpan n = new TimeSpan(30, 0, 0, 0);
            DateTime pr = cur.Subtract(n);
            enddate = pr.ToShortDateString();
            query = "select saling_date,title,books_from.isbn,fname,lname,quantity,total from books_from,book,customer where shop_id='" + shopid + "' and book.isbn=books_from.isbn and customer.email_add=books_from.email_add and saling_date between to_date('" + enddate + "','mm/dd/yyyy') and to_date('" + startdate + "','mm/dd/yyyy')";
        }
        int k = 0;
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        try
        {
            com.CommandText = query;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            k = ds.Tables[0].Rows.Count;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception eee) { }
        if (k == 0)
        {
            Label1.Text = "No transaction has been placed.";
            Label1.Visible = true;
        }
    }
}
