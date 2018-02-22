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

public partial class Featured_Books : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    private DataTable db;
    String[] book;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            this.oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            this.oc.Open();
            this.com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String s = "select isbn,sum(no_of_sold_copy) from available_at group by isbn order by sum(no_of_sold_copy) desc";
        try
        {
            this.com.CommandText = s;
            this.com.CommandType = CommandType.Text;
            this.adap = new OracleDataAdapter(com);
            this.db = new DataTable();
            this.adap.Fill(db);
        }
        catch (Exception ex) { }
        book = new String[10];
        int i = 0;
        foreach (DataRow r in this.db.Rows)
        {
            book[i] = r[0].ToString();
            i++;
            if (i == 10)
                break;
        }
        s = "select title,isbn,front_cover_image,publisher from book where isbn in ('" + book[0] + "','" + book[1] + "','" + book[2] + "','"+book[3]+"','"+book[4]+"','"+book[5]+"','"+book[6]+"','"+book[7]+"','"+book[8]+"','"+book[9]+"')";
        try
        {
            this.com.CommandText = s;
            this.com.CommandType = CommandType.Text;
            this.adap = new OracleDataAdapter(com);
            this.ds = new DataSet();
            this.adap.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        catch (Exception eee) { }
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
