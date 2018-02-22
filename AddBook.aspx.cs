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

public partial class AddBook : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    private DataTable db;
    int flag;
    public String shopid;
    public String isbn;
   
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
        try
        {
             oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
             oc.Open();
             com = oc.CreateCommand();

        }
        catch (Exception ee) { }
        int k = 0;
        String q = "(select title,isbn from book) minus (select title,book.isbn from book,available_at where shop_id='" + shopid + "' and book.isbn=available_at.isbn)";
        try
        {
                com.CommandText = q;
                com.CommandType = CommandType.Text;
                adap = new OracleDataAdapter(com);
                db = new DataTable();
                adap.Fill(db);
                k = db.Rows.Count;
        }
        catch (Exception ef) { }

        foreach (DataRow row in this.db.Rows)
        {
                DropDownList1.Items.Add(row[0].ToString() + "(ISBN: " + row[1].ToString() + ")");
        }
        flag = 1;
    }
    
    protected void Next_Click(object sender, EventArgs e)
    {
        String t = DropDownList1.SelectedValue;
        foreach (DataRow row in this.db.Rows)
        {
             if (t.Equals(row[0].ToString() + "(ISBN: " + row[1].ToString() + ")"))
             {
                isbn = row[1].ToString();
                break;
             }
        }
        Session["seeisbnno"] = isbn;
        Response.Redirect("AddExistingBook.aspx");
    }
    protected void newbook_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNewBook.aspx");
    }

    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();

        }
    }
    
}
