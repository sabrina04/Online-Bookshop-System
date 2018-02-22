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

public partial class Delete_Book : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataTable db;
    private String shopid;
    static String isbn;
    static String title;
    int flag;

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
            String query = "select title,book.isbn from book,available_at where shop_id='" + shopid + "' and book.isbn=available_at.isbn";
            try
            {
                com.CommandText = query;
                com.CommandType = CommandType.Text;
                adap = new OracleDataAdapter(com);
                db = new DataTable();
                adap.Fill(db);
            }
            catch (Exception ef) { }
            if (!Page.IsPostBack)
            {
                foreach (DataRow row in this.db.Rows)
                {
                    DropDownList1.Items.Add(row[0].ToString() + "(ISBN: " + row[1].ToString() + ")");
                }
            }
            flag = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String t = DropDownList1.SelectedValue;
        foreach (DataRow row in this.db.Rows)
        {
            if (t.Equals(row[0].ToString() + "(ISBN: " + row[1].ToString() + ")"))
            {
                title = row[0].ToString();
                isbn = row[1].ToString();
                break;
            }
        }
        Label1.Text = "Are you sure to delete " + title + " (ISBN: " + isbn + ")?";
        Label1.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {
            com = oc.CreateCommand();
            com.CommandText = "delete_book";
            com.CommandType = CommandType.StoredProcedure;

            OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
            com.Parameters.Add(p1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = shopid;

            OracleParameter p2 = new OracleParameter("bisbn", OracleType.VarChar, 30);
            com.Parameters.Add(p2);
            p2.Direction = ParameterDirection.Input;
            p2.Value = isbn;

            i = com.ExecuteNonQuery();
        }
        catch (Exception j) { }
        if (i != 0)
        {
            Label3.Text = title + " has been deleted successfully.";
        }
        else
        {
            Label3.Text = "Error";
        }
        Label3.Visible = true;
        /*String query = "select title,book.isbn from book,available_at where shop_id='" + shopid + "' and book.isbn=available_at.isbn";
        try
        {
            com.CommandText = query;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            db = new DataTable();
            adap.Fill(db);
        }
        catch (Exception ef) { }*/
        DropDownList1.Items.Remove(title+"(ISBN: "+isbn+")");
      
       /* foreach (DataRow row in this.db.Rows)
        {
            DropDownList1.Items.Add(row[0].ToString() + "(ISBN: " + row[1].ToString() + ")");
        } */
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_Book.aspx");
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }
    
}
