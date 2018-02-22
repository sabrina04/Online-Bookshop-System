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


public partial class Advanced_search_result : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    String query;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }

        String t = Session["title"].ToString();
        String a = Session["author"].ToString();
        String p = Session["publisher"].ToString();
        String y = Session["year"].ToString();
        String o = Session["Order"].ToString();

        if (o.Equals("Title"))
        {
            query = "select title,front_cover_image,book.isbn,publisher from book,author,written_by where title like '%" + t + "%' and name like '%" + a + "%' and publisher like '%" + p + "%' and pub_year like '%" + y + "%' and book.isbn=written_by.isbn and written_by.author_id=author.author_id order by title";
        }
        else
        {
            query = "select title,front_cover_image,book.isbn,publisher from book,author,written_by where title like '%" + t + "%' and name like '%" + a + "%' and publisher like '%" + p + "%' and pub_year like '%" + y + "%' and book.isbn=written_by.isbn and written_by.author_id=author.author_id order by pub_year";
        }
        int k = 0;
        try
        {
            com.CommandText = query;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            k = ds.Tables[0].Rows.Count;
            resultlist.DataSource = ds;
            resultlist.DataBind();
        }
        catch (Exception eee)
        {    }
        if (k == 0)
        {
            Label1.Text = "No Search Result Found";
            Label6.Visible = false;
        }
        else
        {
            Label1.Text = "Search Result";
            Label6.Text = "(Total "+k.ToString()+" matches found)";
            Label6.Visible = true;
        }
        String curpath = Request.CurrentExecutionFilePath.ToString();
        Session["returnpath"] = curpath;
    }
    protected void resultlist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        String s = "";
        String t = "";
        if (e.CommandName == "view")
        {
            DataSet ds1 = (DataSet)resultlist.DataSource;
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
