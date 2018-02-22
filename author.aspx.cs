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

public partial class author : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
 
    String s;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();

        }
        catch (Exception f) { }
        String a = "select distinct name from author";
        try
        {

            com.CommandText = a;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            ds = new DataSet();
            adap.Fill(ds);
            Dataauthor.DataSource = ds;
            Dataauthor.DataBind();
        }
        catch (Exception ff) { }
    }
    protected void Dataauthor_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            DataSet ds1=(DataSet)Dataauthor.DataSource;
            s= ds1.Tables[0].Rows[e.Item.ItemIndex]["name"].ToString();
            Session["browsetype"] = "Author";
            Session["bname"] = s;
            Response.Redirect("result_type.aspx");
        }
    }

    private void Page_Unload()
    {
        oc.Close();
    }

}
