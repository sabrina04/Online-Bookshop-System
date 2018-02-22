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

public partial class result : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds1;

    String query1;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();

        }
        catch (Exception ee) { }

        String ss = Session["Title"].ToString();
        String by = Session["By"].ToString();
        if (by.Equals("Title"))
        {
            query1 = "select title,front_cover_image,isbn,publisher from book where title like '%"+ss+"%'";
        }
        else if (by.Equals("Author"))
        {
            query1 = "select title,front_cover_image,book.isbn,publisher from book,author,written_by where name like '%" + ss + "%' and book.isbn=written_by.isbn and written_by.author_id=author.author_id";
        }
        else 
        {
            query1 = "select title,front_cover_image,isbn,publisher from book where publisher like '%" + ss + "%'";
        }
        int k = 0;
        try
        {
            com.CommandText = query1;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds1 = new DataSet();
            adap.Fill(ds1);
            k = ds1.Tables[0].Rows.Count;
            DataList1.DataSource = ds1;
            DataList1.DataBind();
           
        }
        catch (Exception eee) {
            Console.Out.Write(eee.StackTrace);
        }
        if (k == 0)
        {
            Label1.Text = "No search result found";
        }
        else
        {
            Label6.Text = "(Total "+ k.ToString() + " matches found)";
            Label6.Visible = true;
        }
        String curpath = Request.CurrentExecutionFilePath.ToString();
        Session["returnpath"] = curpath;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        String s = "";
        String t = "";
        if (e.CommandName == "view")
        {
            DataSet ds1 = (DataSet)DataList1.DataSource;
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
