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

public partial class result_type : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;

    String qq;
    String s;
    String t;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();

        }
        catch (Exception ee) { }
        String n = Session["browsetype"].ToString();
        String c = Session["bname"].ToString();
        int k = 0;
        if (n.Equals("Author"))
        {
            qq = "select title,front_cover_image,book.isbn,publisher from book,author,written_by where name='" + c + "' and book.isbn=written_by.isbn and author.author_id=written_by.author_id";
        }
        else if (n.Equals("Bookshop"))
        {
            qq = "select title,front_cover_image,book.isbn,publisher from book,shop,available_at where shop.shop_id='"+c+"' and book.isbn=available_at.isbn and shop.shop_id=available_at.shop_id";
        }
        else if (n.Equals("Publisher"))
        {
            qq = "select title,front_cover_image,isbn,publisher from book where publisher='" + c + "'";
        }
        else if (n.Equals("Title"))
        {
            qq = "select title,front_cover_image,isbn,publisher from book where isbn='" + c + "'";

        }
        else
        {
            qq = "select title,front_cover_image,isbn,publisher from book where category_='" + c + "'";
        }
        try
        {
            com.CommandText = qq;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            k = ds.Tables[0].Rows.Count;
            typelist.DataSource = ds;
            typelist.DataBind();
        }
        catch (Exception eee)
        {
            Console.Out.Write(eee.StackTrace);
        }
        if (k == 0)
        {
            Label1.Text = "No search result found";
        }
        
        String curpath = Request.CurrentExecutionFilePath.ToString();
        Session["returnpath"] = curpath;
    }
    protected void typelist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "more" || e.CommandName=="view" || e.CommandName=="cart")
        {
            DataSet ds1 = (DataSet)typelist.DataSource;
            s = ds1.Tables[0].Rows[e.Item.ItemIndex]["title"].ToString();
            t = ds1.Tables[0].Rows[e.Item.ItemIndex]["isbn"].ToString();
            Session["bookname"] = s;
            Session["bookisbn"] = t;
            Response.Redirect("Book_details.aspx");
        }
    }
    private void Page_Unload()
    {
        oc.Close();
    }
}
