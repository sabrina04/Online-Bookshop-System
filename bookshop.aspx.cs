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

public partial class bookshop : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    private String conn;
    public String s;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();

        }
        catch (Exception f) { }
        String p = "select name,shop_id,address,ph_no from shop where status='active'";
        try
        {

            com.CommandText = p;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            Datashop.DataSource = ds;
            Datashop.DataBind();
        }
        catch (Exception ff) { }
    }
    protected void Datashop_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            DataSet ds1 = (DataSet)Datashop.DataSource;
            s = ds1.Tables[0].Rows[e.Item.ItemIndex]["shop_id"].ToString();
            Session["browsetype"] = "Bookshop";
            Session["bname"] = s;
            Response.Redirect("result_type.aspx");
        }
    }
    private void Page_Unload() 
    {
        oc.Close();
    }
}
