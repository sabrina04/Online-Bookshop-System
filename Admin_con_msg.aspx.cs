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

public partial class Admin_con_msg : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataTable db;
    int flag;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backtoadmin"] = "flasebacktoadmin";
        if (!Convert.ToString(Session["AdminLoggedin"]).Equals("TrueAdmin"))
        {
            flag = 0;
            Session["backtoadmin"] = "truebacktoadmin";
            Session["takemetoadmin"] = "Delete_Shop.aspx";
            Response.Redirect("Signin.aspx");
        }
        flag = 1;
        String shopid=Session["deleteshopid"].ToString();
        String sname = Session["deleteshopname"].ToString();
        int i = 0;
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String del = "delete from shop where shop_id='"+shopid+"'";
        try
        {
            com.CommandText = del;
            i = com.ExecuteNonQuery();
        }
        catch (Exception k) { }      
        if (i != 0)
        {
            Label1.Text = sname+" has been deleted from the database.";
        }
        else
        {
            Label1.Text = "Error in deletion";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pending_Shop.aspx");
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }
}
