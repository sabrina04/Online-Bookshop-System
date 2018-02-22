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

public partial class AddNewBook : System.Web.UI.Page
{
    private OracleConnection oc;
    private OracleCommand com;
    private OracleDataAdapter adap;
    private DataSet ds;
    private DataTable db;
    int flag;
    public String[] authname;
    public String[] authurl;
    public String[] des;
    public String shid;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["backto"] = "flasebackto";
        if (!Convert.ToString(Session["ShopLoggedin"]).Equals("TrueShop"))
        {
            flag = 0;
            Session["backto"] = "truebackto";
            Session["takemeto"] = "AddNewBook.aspx";
            Response.Redirect("Signin.aspx");
        }
        shid = Session["shopuser"].ToString();
        try
        {
            oc = new OracleConnection("Data Source=MYDB; User ID=scott; Password=tiger");
            oc.Open();
            com = oc.CreateCommand();
        }
        catch (Exception ee) { }
        String ss = "select distinct category_ from book";
        try
        {
            com.CommandText = ss;
            com.CommandType = CommandType.Text;
            adap = new OracleDataAdapter(com);
            db = new DataTable();
            adap.Fill(db);
        }
        catch (Exception eff) { }
        if (!Page.IsPostBack)
        {
            foreach (DataRow row in this.db.Rows)
            {
                DropDownList_cat.Items.Add(row[0].ToString());
            }
        }
        flag = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (title_textbox.Text.Equals("") || isbn_textbox.Text.Equals("") || publisher_textbox.Text.Equals("") || pubyear_textbox.Text.Equals("") || price_textbox.Text.Equals("") || lang_textbox.Text.Equals(""))
        {
            Label10.Visible = true;
        }
        if (a1_textbox.Text.Equals("") && a2_textbox.Text.Equals("") && a3_textbox.Text.Equals("") && a4_textbox.Text.Equals("") && a5_textbox.Text.Equals("") && a6_textbox.Text.Equals("") && a7_textbox.Text.Equals("") && a8_textbox.Text.Equals("") && a9_textbox.Text.Equals("") && a10_textbox.Text.Equals(""))
        {
            Label10.Visible = true;
        }
        else
        {
            int prc = 0;
            prc = int.Parse(price_textbox.Text);
            int m = 0;
            authname = new String[10];
            authurl = new String[10];
            des = new String[10];
            int i = 0;
            if (!a1_textbox.Text.Equals(""))
            {
                authname[i] = a1_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a2_textbox.Text.Equals(""))
            {
                authname[i] = a2_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a3_textbox.Text.Equals(""))
            {
                authname[i] = a3_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a4_textbox.Text.Equals(""))
            {
                authname[i] = a4_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a5_textbox.Text.Equals(""))
            {
                authname[i] = a5_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a6_textbox.Text.Equals(""))
            {
                authname[i] = a6_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a7_textbox.Text.Equals(""))
            {
                authname[i] = a7_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a8_textbox.Text.Equals(""))
            {
                authname[i] = a8_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a9_textbox.Text.Equals(""))
            {
                authname[i] = a9_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            if (!a10_textbox.Text.Equals(""))
            {
                authname[i] = a10_textbox.Text;
                authurl[i] = "";
                des[i] = "";
                i += 1;
            }
            String rev="";
            String filepath = "";
            if (FileUpload1.HasFile)
            {
                try
                {
                    FileUpload1.SaveAs("D:\\Online Bookshop System\\App_Data\\" + FileUpload1.FileName);
                }
                catch (Exception ex) { }
                filepath = "file:///D:\\Online Bookshop System\\App_Data\\" + FileUpload1.FileName.ToString();
            }
            String cat = "";
            if (newcategory_textbox.Text.Equals(""))
                cat = DropDownList_cat.SelectedValue;
            else
                cat = newcategory_textbox.Text;
            try
            {
                com = oc.CreateCommand();
                com.CommandText = "insert_book";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("b_title", OracleType.VarChar, 60);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = title_textbox.Text;

                OracleParameter p2 = new OracleParameter("b_isbn", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = isbn_textbox.Text;

                OracleParameter p3 = new OracleParameter("b_edition", OracleType.VarChar, 40);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = edition_textbox.Text;

                OracleParameter p4 = new OracleParameter("b_publisher", OracleType.VarChar, 50);
                com.Parameters.Add(p4);
                p4.Direction = ParameterDirection.Input;
                p4.Value = publisher_textbox.Text;

                OracleParameter p5 = new OracleParameter("b_pubyear", OracleType.VarChar, 10);
                com.Parameters.Add(p5);
                p5.Direction = ParameterDirection.Input;
                p5.Value = pubyear_textbox.Text;

                OracleParameter p6 = new OracleParameter("b_review", OracleType.VarChar, 3000);
                com.Parameters.Add(p6);
                p6.Direction = ParameterDirection.Input;
                p6.Value = rev;

                OracleParameter p7 = new OracleParameter("b_img", OracleType.VarChar, 200);
                com.Parameters.Add(p7);
                p7.Direction = ParameterDirection.Input;
                p7.Value = filepath;

                OracleParameter p8 = new OracleParameter("b_cat", OracleType.VarChar, 30);
                com.Parameters.Add(p8);
                p8.Direction = ParameterDirection.Input;
                p8.Value = cat;

                OracleParameter p9 = new OracleParameter("b_lang", OracleType.VarChar, 30);
                com.Parameters.Add(p9);
                p9.Direction = ParameterDirection.Input;
                p9.Value = lang_textbox.Text;

                int ml = com.ExecuteNonQuery();
            }
            catch (Exception er) { }

            for (int j = 0; j < i; j++)
            {
                try
                {
                    this.com = oc.CreateCommand();
                    com.CommandText = "insert_author_book";
                    com.CommandType = CommandType.StoredProcedure;

                    OracleParameter p1 = new OracleParameter("b_isbn", OracleType.VarChar, 30);
                    com.Parameters.Add(p1);
                    p1.Direction = ParameterDirection.Input;
                    p1.Value = isbn_textbox.Text;

                    OracleParameter p2 = new OracleParameter("a_name", OracleType.VarChar, 50);
                    com.Parameters.Add(p2);
                    p2.Direction = ParameterDirection.Input;
                    p2.Value = authname[j];

                    OracleParameter p3 = new OracleParameter("a_url", OracleType.VarChar, 50);
                    com.Parameters.Add(p3);
                    p3.Direction = ParameterDirection.Input;
                    p3.Value = authurl[j];

                    OracleParameter p4 = new OracleParameter("a_info", OracleType.VarChar, 3000);
                    com.Parameters.Add(p4);
                    p4.Direction = ParameterDirection.Input;
                    p4.Value = des[j];

                    m = com.ExecuteNonQuery();
                }
                catch (Exception err) { }
            }
            try
            {
                this.com = oc.CreateCommand();
                com.CommandText = "insert_available_at";
                com.CommandType = CommandType.StoredProcedure;

                OracleParameter p1 = new OracleParameter("shid", OracleType.VarChar, 20);
                com.Parameters.Add(p1);
                p1.Direction = ParameterDirection.Input;
                p1.Value = shid;

                OracleParameter p2 = new OracleParameter("b_isbn", OracleType.VarChar, 30);
                com.Parameters.Add(p2);
                p2.Direction = ParameterDirection.Input;
                p2.Value = isbn_textbox.Text;

                OracleParameter p3 = new OracleParameter("prc", OracleType.Number);
                com.Parameters.Add(p3);
                p3.Direction = ParameterDirection.Input;
                p3.Value = prc;

                int v = com.ExecuteNonQuery();
            }
            catch (Exception ll) { }
            Session["ivalue"] = m.ToString();
            Response.Redirect("Success.aspx");
        }
    }
}
