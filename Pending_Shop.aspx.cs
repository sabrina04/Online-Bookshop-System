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

public partial class Pending_Shop : System.Web.UI.Page
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
            int k = 0;
            String query = "select name,shop_id,address,ph_no from shop where status='pending'";
            try
            {
                com.CommandText = query;
                com.CommandType = CommandType.Text;
                adap = new OracleDataAdapter(com);
                ds = new DataSet();
                adap.Fill(ds);
                k = ds.Tables[0].Rows.Count;
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            catch (Exception ff) { }
            if (k == 0)
                Label9.Visible = true;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        String s = "";
        String sname = "";
        int i = 0,j=0;
        if (e.CommandName == "addshop")
        {
            DataSet ds1 = (DataSet)DataList1.DataSource;
            s = ds1.Tables[0].Rows[e.Item.ItemIndex]["shop_id"].ToString();
            sname = ds1.Tables[0].Rows[e.Item.ItemIndex]["name"].ToString();
            String q = "update shop set status='active' where shop_id='"+s+"'";
            try
            {
                this.com = oc.CreateCommand();
                this.com.CommandText = q;
                i = com.ExecuteNonQuery();
            }
            catch (Exception p) { }
            int aa = 300;
            String date = DateTime.Now.ToShortDateString();
            
            try
            {
                this.com = oc.CreateCommand();
                com.CommandText = "insert_payment";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = s;

                OracleParameter p2 = new OracleParameter("amount", OracleType.Number);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = aa;

                OracleParameter p3 = new OracleParameter("dates", OracleType.VarChar, 30);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = date;

                j = com.ExecuteNonQuery();
            }
            catch (Exception p) { }
            if (i!=0 && j!=0)
            {
                Label8.Text = sname + " is successfully added to the database.";
                Label8.Visible = true;
            }
            else
            {
                Label8.Text = "An error has occurred";
                Label8.Visible = true;
            }
        }
        else if (e.CommandName == "deleteshop")
        {
            DataSet ds1 = (DataSet)DataList1.DataSource;
            s = ds1.Tables[0].Rows[e.Item.ItemIndex]["shop_id"].ToString();
            sname = ds1.Tables[0].Rows[e.Item.ItemIndex]["name"].ToString();
            String q = "delete from shop where shop_id='"+s+"'";
            try
            {
                this.com = oc.CreateCommand();
                this.com.CommandText = q;
                i = com.ExecuteNonQuery();
            }
            catch (Exception p) { }
            if (i != 0)
            {
                Label8.Text = sname + " is successfully deleted from the database.";
            }
            else
            {
                Label8.Text = "An error has occurred";
            }
            Label8.Visible = true;
        }
        String query = "select name,shop_id,address,ph_no from shop where status='pending'";
        try
        {
            this.com = oc.CreateCommand();
            com.CommandText = query;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        catch (Exception ff) { }
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();
        }
    }
}
