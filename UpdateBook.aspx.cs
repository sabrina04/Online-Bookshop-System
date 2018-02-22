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

public partial class UpdateBook : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    private DataTable db;
    String shopid;
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
            catch (Exception eff) { }
            if (!Page.IsPostBack)
            {
                foreach (DataRow row in this.db.Rows)
                {
                    DropDownList1.Items.Add(row[0].ToString() + "(ISBN: " + row[1] + ")");
                }
            }
            flag = 1;
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }

    protected void go_button_Click(object sender, EventArgs e)
    {
            String book = "";
            String isbn = "";
            if (TextBox1.Text.Equals(""))
            {
                book = DropDownList1.SelectedValue;
                foreach (DataRow row in this.db.Rows)
                {
                    if (book.Equals(row[0].ToString() + "(ISBN: " + row[1].ToString() + ")"))
                    {
                        isbn = row[1].ToString();
                        break;
                    }
                }
                String q = "select title,book.isbn,price from book,available_at,shop where book.isbn='" + isbn + "' and shop.shop_id='" + shopid + "' and book.isbn=available_at.isbn and shop.shop_id=available_at.shop_id";
                try
                {
                    com = oc.CreateCommand();
                    com.CommandText = q;
                    com.CommandType = CommandType.Text;
                    adap = new OracleDataAdapter(com);
                    db = new DataTable();
                    adap.Fill(db);
                }
                catch (Exception ef) { }
                Label5.Visible = true;
                title_label.Text = db.Rows[0][0].ToString();
                title_label.Visible = true;
                Label3.Visible = true;
                isbn_label.Text = db.Rows[0][1].ToString();
                isbn_label.Visible = true;
                Label4.Visible = true;
                price_textbox.Text = db.Rows[0][2].ToString();
                price_textbox.Visible = true;
                update_button.Visible = true;
            }
            else
            {
                book = TextBox1.Text;
                String q = "select title,book.isbn,price from book,available_at,shop where book.isbn='" + book + "' and shop.shop_id='" + shopid + "' and book.isbn=available_at.isbn and shop.shop_id=available_at.shop_id";
                try
                {
                    com = oc.CreateCommand();
                    com.CommandText = q;
                    com.CommandType = CommandType.Text;
                    adap = new OracleDataAdapter(com);
                    db = new DataTable();
                    adap.Fill(db);
                }
                catch (Exception ef) { }
                Label5.Visible = true;
                title_label.Text = db.Rows[0][0].ToString();
                title_label.Visible = true;
                Label3.Visible = true;
                isbn_label.Text = db.Rows[0][1].ToString();
                isbn_label.Visible = true;
                Label4.Visible = true;
                price_textbox.Text = db.Rows[0][2].ToString();
                price_textbox.Visible = true;
                update_button.Visible = true;
            }
    }

    protected void update_button_Click(object sender, EventArgs e)
    {
        if (price_textbox.Text.Equals(""))
        {
            Label6.Visible = true;
        }
        else
        {
            String pr = price_textbox.Text;
            int pp = int.Parse(pr);
            int i = 0;
            try
            {
                this.com = oc.CreateCommand();
                com.CommandText = "update_price";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = shopid;

                OracleParameter p2 = new OracleParameter("b_isbn", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = isbn_label.Text;

                OracleParameter p3 = new OracleParameter("prc", OracleType.Number);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = pp;

                i = com.ExecuteNonQuery();
            }
            catch (Exception j) { }
            if (i != 0)
            {
                Label7.Text = "Price has been upadted successfully";
                Label7.Visible = true;
            }
            else {
                Label7.Text = "Error";
                Label7.Visible = true;
            }
        }
    }
    
}
