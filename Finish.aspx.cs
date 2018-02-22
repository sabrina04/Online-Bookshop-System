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

public partial class Finish : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;

    public ShoppingCart putcart;
    String username;
    String curdate;
    String c;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            Response.Redirect("Home.aspx");
        }
        username = Session["user"].ToString();
        putcart = (ShoppingCart)Session["cartobj"];
        Label3.Text = username;
        curdate = DateTime.Now.ToShortDateString();  
        
    }
    protected void finish_button_Click(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String deldate = Calendar1.SelectedDate.ToShortDateString();
        DateTime cd = DateTime.Now;
        DateTime dd = Calendar1.SelectedDate;
        if (cd > dd)
        {
            Label2.Visible = true;
        }
        else
        {
            try
            {
                com.CommandText = "new_cart";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("mailadd", OracleType.VarChar, 30);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = username;

                OracleParameter p2 = new OracleParameter("ordrdt", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = curdate;

                OracleParameter p3 = new OracleParameter("delvdt", OracleType.VarChar, 30);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = deldate;

                OracleParameter p4 = new OracleParameter("cartnum", OracleType.VarChar, 20);
                com.Parameters.Add(p4);
                p4.Direction = ParameterDirection.ReturnValue;

                com.ExecuteScalar();
                c = p4.Value.ToString();
            }
            catch (Exception er) { }

            /* String q = "select cart_id from cart where email_add='" + username + "' and delivery_date=to_date('"+deldate+"','mm/dd/yyyy')";
             try
             {
                 com = oc.CreateCommand();
                 com.CommandText = q;
                 c = Convert.ToString(com.ExecuteScalar());
             }
             catch (Exception eee) { }*/

            foreach (CartItem item in putcart.Items)
            {
                String isbnn = item.ISBN;
                String shopname = item.Shop;
                int qty = item.Quantity;
                double t = item.LineTotal;

                try
                {
                    com = oc.CreateCommand();
                    com.CommandText = "cart_contains";
                    com.CommandType = CommandType.StoredProcedure;

                    OracleParameter p1 = new OracleParameter("mailadd", OracleType.VarChar, 30);
                    com.Parameters.Add(p1);
                    p1.Direction = ParameterDirection.Input;
                    p1.Value = username;

                    OracleParameter p2 = new OracleParameter("cartnum", OracleType.VarChar, 30);
                    com.Parameters.Add(p2);
                    p2.Direction = ParameterDirection.Input;
                    p2.Value = c;

                    OracleParameter p3 = new OracleParameter("shopname", OracleType.VarChar, 30);
                    com.Parameters.Add(p3);
                    p3.Direction = ParameterDirection.Input;
                    p3.Value = shopname;

                    OracleParameter p4 = new OracleParameter("b_isbn", OracleType.VarChar, 30);
                    com.Parameters.Add(p4);
                    p4.Direction = ParameterDirection.Input;
                    p4.Value = isbnn;

                    OracleParameter p5 = new OracleParameter("qty", OracleType.Number);
                    com.Parameters.Add(p5);
                    p5.Direction = ParameterDirection.Input;
                    p5.Value = qty;

                    OracleParameter p6 = new OracleParameter("btotal", OracleType.Number);
                    com.Parameters.Add(p6);
                    p6.Direction = ParameterDirection.Input;
                    p6.Value = t;

                    int i = com.ExecuteNonQuery();
                }
                catch (Exception l) { }
            }
            oc.Close();
            putcart.Items.Clear();
            Session["iscart"] = "falsecart";
            Response.Redirect("Home.aspx");
        }
    }
    //}
    
}
