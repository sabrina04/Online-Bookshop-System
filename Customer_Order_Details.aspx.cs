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

public partial class Customer_Order_Details : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    private DataTable db;
    int flag;
    String mailadd;
    String cartiid;
    String shopid;
    String order;
    String delivery;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backto"] = "flasebackto";
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            flag = 0;
            Session["backto"] = "truebackto";
            Session["takemeto"] = "BookshopsHome.aspx";
            Response.Redirect("Signin.aspx");
        }
        String fname = Session["firstname"].ToString();
        String lname = Session["lastname"].ToString();
        cartiid = Session["carttid"].ToString();
        String addrs = Session["addrs"].ToString();
        mailadd = Session["mailaddress"].ToString();
        order = Session["orderdate"].ToString();
        delivery = Session["deliverydate"].ToString();
        shopid=Session["shopuser"].ToString();

        fname_label.Text=fname;
        lname_label.Text=lname;
        mail_label.Text=mailadd;
        addrs_label.Text=addrs;
        order_label.Text=order;
        del_label.Text=delivery;
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String q = "select crdt_co,credit_card_no from customer where email_add='"+mailadd+"'";
        try
        {
            com.CommandText = q;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            db = new DataTable();
            adap.Fill(db);
        }
        catch (Exception k) { }
        foreach (DataRow row in this.db.Rows)
        {
            com_label.Text = row[0].ToString();
            num_label.Text = row[1].ToString();
        }

        q = "select title,front_cover_image,books_from.isbn,edition,quantity,total from book,books_from,cart where books_from.email_add='"+mailadd+"' and shop_id='"+shopid+"' and books_from.cart_id='"+cartiid+"' and books_from.status='Not Delivered' and book.isbn=books_from.isbn and books_from.cart_id=cart.cart_id and books_from.email_add=cart.email_add";
        try
        {
            com.CommandText = q;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        catch (Exception p) { Response.Write(p.StackTrace); }
        flag = 1;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "updated")
        {
            DataSet ds1 = (DataSet)DataList1.DataSource;
            String isbn = ds1.Tables[0].Rows[e.Item.ItemIndex]["isbn"].ToString();
            String qty = ds1.Tables[0].Rows[e.Item.ItemIndex]["quantity"].ToString();
            int tq = int.Parse(qty);
            int i = 0;
            
            try
            {
                com = oc.CreateCommand();
                com.CommandText = "update_saling_date";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("sdate", OracleType.VarChar, 30);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = DateTime.Now.ToShortDateString();

                OracleParameter p2 = new OracleParameter("bisbn", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = isbn;

                OracleParameter p3 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = shopid;

                OracleParameter p4 = new OracleParameter("mailadd", OracleType.VarChar, 30);
                com.Parameters.Add(p4);
                p4.Direction = ParameterDirection.Input;
                p4.Value = mailadd;

                OracleParameter p5 = new OracleParameter("cartiid", OracleType.VarChar, 30);
                com.Parameters.Add(p5);
                p5.Direction = ParameterDirection.Input;
                p5.Value = cartiid;

                OracleParameter p6 = new OracleParameter("qty", OracleType.Number);
                com.Parameters.Add(p6);
                p6.Direction = ParameterDirection.Input;
                p6.Value = tq;

                i = com.ExecuteNonQuery();
            }
            catch (Exception p) {  }
            if (i != 0)
            {
                Label20.Text = "Successfully delivered";
                Label20.Visible = true;
            }
    /*        else
            {
                Label20.Text = "Error";
                Label20.Visible = true;
            }*/
            String qs = "select title,front_cover_image,books_from.isbn,edition,quantity,total from book,books_from,cart where books_from.email_add='" + mailadd + "' and shop_id='" + shopid + "' and books_from.cart_id='" + cartiid + "' and books_from.status='Not Delivered' and book.isbn=books_from.isbn and books_from.cart_id=cart.cart_id and books_from.email_add=cart.email_add";
            try
            {
                com = oc.CreateCommand();
                com.CommandText = qs;
                com.CommandType = CommandType.Text;
                adap = new OracleDataAdapter(com);
                ds = new DataSet();
                adap.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            catch (Exception ppp) { }
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
