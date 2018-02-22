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

public partial class Shop_Pay_Info : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    int flag;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backtoadmin"] = "flasebacktoadmin";
        if (!Convert.ToString(Session["AdminLoggedin"]).Equals("TrueAdmin"))
        {
            flag = 0;
            Session["backtoadmin"] = "truebacktoadmin";
            Session["takemetoadmin"] = Request.CurrentExecutionFilePath.ToString();
            Response.Redirect("Signin.aspx");
        }
        flag = 1;
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String ss = "select name,shop.shop_id,pay_amount from shop,payment where shop.shop_id=payment.shop_id";
        try
        {
            com.CommandText = ss;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception p) { }
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }
}
