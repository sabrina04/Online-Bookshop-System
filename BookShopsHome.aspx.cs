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

public partial class BookShopsHome : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    int flag;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backto"] = "flasebackto";
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            flag=0;
            Session["backto"] = "truebackto";
            Session["takemeto"]=Request.CurrentExecutionFilePath.ToString();
            Response.Redirect("Signin.aspx");
        }
        
        String ss = Session["shopuser"].ToString(); ;
        try
        {
             oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
             oc.Open();
             com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        int k = 0;
        String query = "select distinct fname,lname,cart.cart_id,customer.email_add,address,order_date,delivery_date from books_from,cart,customer where books_from.shop_id='" + ss + "' and books_from.status='Not Delivered' and customer.email_add=cart.email_add and cart.cart_id=books_from.cart_id and cart.email_add=books_from.email_add";
        try
        {
             this.com.CommandText = query;
             this.com.CommandType = CommandType.Text;
             this.adap = new OracleDataAdapter(com);
             this.ds = new DataSet();
             this.adap.Fill(ds);
             k = ds.Tables[0].Rows.Count;
             DataList1.DataSource = ds;
             DataList1.DataBind();
        }
        catch (Exception eee) { }
        if (k == 0)
        {
             Label10.Visible = true;
        }
        flag = 1;
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "order")
        {
            DataSet ds1 = (DataSet)DataList1.DataSource;
            String f = ds1.Tables[0].Rows[e.Item.ItemIndex]["fname"].ToString();
            String l = ds1.Tables[0].Rows[e.Item.ItemIndex]["lname"].ToString();
            String c = ds1.Tables[0].Rows[e.Item.ItemIndex]["cart_id"].ToString();
            String a = ds1.Tables[0].Rows[e.Item.ItemIndex]["address"].ToString();
            String ef = ds1.Tables[0].Rows[e.Item.ItemIndex]["email_add"].ToString();
            String o = ds1.Tables[0].Rows[e.Item.ItemIndex]["order_date"].ToString();
            String d = ds1.Tables[0].Rows[e.Item.ItemIndex]["delivery_date"].ToString();
            String temp1 = o.Trim(" 12:00:00AM".ToCharArray());
            String temp2 = d.Trim(" 12:00:00AM".ToCharArray());
            Session["firstname"] = f;
            Session["lastname"] = l;
            Session["carttid"] = c;
            Session["addrs"] = a;
            Session["mailaddress"] = ef;
            Session["orderdate"] = temp1;
            Session["deliverydate"] = temp2;
            Response.Redirect("Customer_Order_Details.aspx");
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
