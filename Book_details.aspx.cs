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

public partial class Book_details : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataTable db;
    private DataSet ds;
  
    private String query;
    private String b;
    private String ii;
    private String[] sname;
    private String[] prc;
    private int k;
    static public ShoppingCart Cart;
    
    protected void Page_Load(object sender, EventArgs e)
    {      
            try
            {
                oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
                oc.Open();
                com = oc.CreateCommand();

            }
            catch (Exception ee) { }
            b = Session["bookname"].ToString();
            ii = Session["bookisbn"].ToString();
            title_label.Text = b;
            query = "select front_cover_image from book where isbn='" + ii + "'";
            try
            {

                this.com.CommandText = query;
                this.com.CommandType = CommandType.Text;
                this.adap = new OracleDataAdapter(com);
                this.ds = new DataSet();
                this.adap.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            catch (Exception eee)
            {
                Console.Out.Write(eee.StackTrace);
            }
            query = "select name from author,written_by,book where book.isbn='" + ii + "' and book.isbn=written_by.isbn and author.author_id=written_by.author_id";
            try
            {

                this.com.CommandText = query;
                this.com.CommandType = CommandType.Text;
                this.adap = new OracleDataAdapter(com);
                this.ds = new DataSet();
                this.adap.Fill(ds);
                DataList2.DataSource = ds;
                DataList2.DataBind();
            }
            catch (Exception eew)
            {
                Console.Out.Write(eew.StackTrace);
            }
            query = "select isbn,edition,publisher,pub_year,lang,category_ from book where isbn='" + ii + "'";
            try
            {

                this.com.CommandText = query;
                this.com.CommandType = CommandType.Text;
                this.adap = new OracleDataAdapter(com);
                this.ds = new DataSet();
                this.adap.Fill(ds);
                DataList3.DataSource = ds;
                DataList3.DataBind();
            }
            catch (Exception eg)
            {
                Console.Out.Write(eg.StackTrace);
            }
            query = "select name,price from shop,available_at,book where book.isbn='" + ii + "' and shop.status='active' and book.isbn=available_at.isbn and shop.shop_id=available_at.shop_id";
            try
            {
                this.com.CommandText = query;
                this.com.CommandType = CommandType.Text;
                this.adap = new OracleDataAdapter(com);
                this.ds = new DataSet();
                this.adap.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ef)
            {
                Console.Out.Write(ef.StackTrace);
            }
            k = ds.Tables[0].Rows.Count;
            sname = new String[k];
            prc = new String[k];
            for (int i = 0; i < k; i++)
            {
                sname[i] = ds.Tables[0].Rows[i]["name"].ToString();
                prc[i] = ds.Tables[0].Rows[i]["price"].ToString();
            }
            foreach (DataRow row in this.ds.Tables[0].Rows)
            {
                shop_dropdownlist.Items.Add(row[0].ToString());
            }
        
    }
    public double getPrice(String shopname)
    {
        int i = 0;
        double price = 0;
        if (sname[i].Equals(shopname))
        {
            price = double.Parse(prc[i]);
            return price;
        }
        else
        {
            while (i<k)
            {
                if (shopname.Equals(sname[i]))
                {
                    price = double.Parse(prc[i]);
                    break;
                }
                i++;
            }
        }
        return price;
    }
    protected void addcart_link_Click(object sender, EventArgs e)
    {
        String shopname = shop_dropdownlist.SelectedValue;
        String qty = qty_dropdownlist.SelectedValue;
        double Price = getPrice(shopname);
  
        String ISBN=Session["bookisbn"].ToString();
        String Title=title_label.Text;
        String Shop=shopname;
        int Quantity = int.Parse(qty);
    
        if (Cart == null)
        {
            Cart = new ShoppingCart();
        }
        
        Cart.Insert(ISBN, Title, Shop, Quantity, Price);
        
        
        Session["cartobj"] = Cart;
        Session["iscart"] = "truecart";
        Response.Redirect("View_Cart.aspx");
    }
    private void Page_Unload()
    {
        oc.Close();
    }
}
