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

public partial class Activate_Shop : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    int flag;
    String s;
    String t;

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
            String query = "select name,shop_id from shop where status='inactive'";
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
            catch (Exception l) { }
            if (k == 0)
            {
                Label1.Text = "Every bookshop has already been activated.";
            }
    }
    private void Page_Unload()
    {
        if (flag == 1)
        {
            oc.Close();        
        }   
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "activate")
        {
            DataSet ds1 = (DataSet)DataList1.DataSource;
            s = ds1.Tables[0].Rows[e.Item.ItemIndex]["name"].ToString();
            t = ds1.Tables[0].Rows[e.Item.ItemIndex]["shop_id"].ToString();
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            name_label.Text = s;
            name_label.Visible = true;
            id_label.Text = t;
            id_label.Visible = true;
            TextBox1.Visible = true;
            activate_button.Visible = true;
        }
    }
    protected void activate_button_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals(""))
        {
            Label7.Visible = true;
        }
        else {
            int i = 0;
            int j=int.Parse(TextBox1.Text);
            String d = DateTime.Now.ToShortDateString();
            String p = "update shop set status='active' where shop_id='" + id_label.Text + "'";
            try
            {
                this.com.CommandText = p;
                i = com.ExecuteNonQuery();

                this.com = oc.CreateCommand();
                com.CommandText = " insert_payment";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = id_label.Text;

                OracleParameter p2 = new OracleParameter("amount", OracleType.Number);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = j;

                OracleParameter p3 = new OracleParameter("dates", OracleType.VarChar, 30);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = d;

                j = com.ExecuteNonQuery();
            }
            catch (Exception f) { }
            if (i != 0 && j != 0)
            {
                Label8.Text = name_label.Text + "has been activated.";
                Label8.Visible = true;
            }
            String query = "select name,shop_id from shop where status='inactive'";
            try
            {
                com = oc.CreateCommand();
                com.CommandText = query;
                com.CommandType = CommandType.Text;
                adap = new OracleDataAdapter(com);
                ds = new DataSet();
                adap.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            catch (Exception l) { }
        }
    }
    
}
