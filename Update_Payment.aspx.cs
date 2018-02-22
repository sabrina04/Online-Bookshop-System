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

public partial class Update_Payment : System.Web.UI.Page
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
            String query = "select name,shop_id from shop";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (amount_textbox.Text.Equals(""))
        {
            Label4.Visible = true;
        }
        else
        {
            String str = DropDownList1.SelectedValue;
            String shopname="";
            String shopid="";
            foreach (DataRow row in this.db.Rows)
            {
                if (str.Equals(row[0].ToString() + "(Shop ID: " + row[1].ToString() + ")"))
                {
                    shopname=row[0].ToString();
                    shopid = row[1].ToString();
                    break;
                }
            }
            int i = 0;
            int j = int.Parse(amount_textbox.Text);
            String d=DateTime.Now.ToShortDateString();
            try
            {
                this.com = oc.CreateCommand();
                com.CommandText = "shop_payment";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = shopid;

                OracleParameter p2 = new OracleParameter("date1", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = d;

                OracleParameter p3 = new OracleParameter("shamount", OracleType.Number);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = j;

                i = com.ExecuteNonQuery();
            }
            catch (Exception p) { }
            if (i != 0)
            { 
                Label3.Text=shopname+"' payment has been updated.";
                Label3.Visible = true;
            }
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
