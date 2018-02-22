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

public partial class Delete_Shop : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataTable db;
    int flag;
    String shopid;
    String shopname;

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
            String query = "select name,shop_id from shop where status='active' or status='inactive'";
            try
            {
                com.CommandText = query;
                com.CommandType = CommandType.Text;
                adap = new OracleDataAdapter(com);
                db = new DataTable();
                adap.Fill(db);
            }
            catch (Exception ff) { }
            if (!Page.IsPostBack)
            {
                foreach (DataRow row in this.db.Rows)
                {
                    DropDownList1.Items.Add(row[0].ToString() + "(Shop ID: " + row[1].ToString() + ")");
                }
            }
        
    }
    protected void next_button_Click(object sender, EventArgs e)
    {
        String str = DropDownList1.SelectedValue;
        foreach (DataRow row in this.db.Rows)
        {
             if (str.Equals(row[0].ToString() + "(Shop ID: " + row[1].ToString() + ")"))
             {
                 shopname=row[0].ToString();
                 shopid = row[1].ToString();
                 break;
             }
        }
        Session["deleteshopid"] = shopid;
        Session["deleteshopname"]=shopname;
        Response.Redirect("Admin_con_msg.aspx");
    /*    Label2.Text = "Are you sure to delete ";
        Label4.Text = shopname;
        Label5.Text = shopid;
        Label6.Text=")?";
        Label2.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        yes_button.Visible = true;
        no_button.Visible = true;*/
    }
    protected void yes_button_Click(object sender, EventArgs e)
    {       
        int i = 0;
        try
        {
            com = oc.CreateCommand();
            com.CommandText = "delete_shop";
            com.CommandType = CommandType.StoredProcedure;

            OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
            com.Parameters.Add(p1);
            p1.Direction = ParameterDirection.Input;
            p1.Value = Label5.Text;

            i = com.ExecuteNonQuery();
        }
        catch (Exception j) { }
        if (i != 0)
        {
            Label3.Text = Label5.Text + " has been deleted successfully.";
            DropDownList1.Items.Remove(shopname + "(Shop ID: " + Label5.Text + ")");
        }
        else
        {
            Label3.Text = "Error";
        }
        Label3.Visible = true;
        
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }
}
