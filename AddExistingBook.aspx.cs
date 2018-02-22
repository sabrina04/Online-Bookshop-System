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

public partial class AddExistingBook : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    int flag;
    public DataSet ds;
    public DataTable db;
    public String isbn;
    public String shopidstr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backto"] = "flasebackto";
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            flag = 0;
            Session["backto"] = "truebackto";
            Session["takemeto"] = "AddBook.aspx";
            Response.Redirect("Signin.aspx");
        }
        
            isbn = Session["seeisbnno"].ToString();
            shopidstr = Session["shopuser"].ToString();
            try
            {
                oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
                oc.Open();
                com = oc.CreateCommand();
            }
            catch (Exception ee) { }
            String query = "select title,front_cover_image,isbn,edition,publisher,pub_year from book where isbn='" + isbn + "'";
            try
            {
                this.com = oc.CreateCommand();
                this.com.CommandText = query;
                this.com.CommandType = CommandType.Text;
                this.adap = new OracleDataAdapter(com);
                this.ds = new DataSet();
                this.adap.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            catch (Exception ef) { }
            query = "select name from author,written_by,book where book.isbn='" + isbn + "' and book.isbn=written_by.isbn and author.author_id=written_by.author_id";
            try
            {
                this.com = oc.CreateCommand();
                this.com.CommandText = query;
                this.com.CommandType = CommandType.Text;
                this.adap = new OracleDataAdapter(com);
                this.db = new DataTable();
                this.adap.Fill(db);
            }
            catch (Exception eff) { }
            foreach (DataRow row in this.db.Rows)
            {
                Label l = new Label();
                l.Text = row[0].ToString() + "<br>";
                PlaceHolder1.Controls.Add(l);
            }
            flag = 1;
    }
    protected void exs_button_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals(""))
        {
            Label12.Visible = true;
        }
        else
        {
            int p = int.Parse(TextBox1.Text);
            int i = 0;
            try
            {
                this.com = oc.CreateCommand();
                com.CommandText = "insert_available_at";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = shopidstr;


                OracleParameter p2 = new OracleParameter("b_isbn", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = isbn;

                OracleParameter p3 = new OracleParameter("prc", OracleType.Number);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = p;

                i = com.ExecuteNonQuery();
            }
            catch (Exception er) { }
            Session["ivalue"] = i.ToString();
            Response.Redirect("Success.aspx");
        }
    }
    
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();

        }
    }
}
