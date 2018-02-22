using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;

public partial class View_Cart : System.Web.UI.Page
{
    public ShoppingCart temp;
    int f;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            f = 1;
            Label3.Text = Session["user"].ToString();
            temp = (ShoppingCart)Session["cartobj"];
            if (temp == null || temp.Items==null)
            {
                f = 0;
                Label4.Visible = true;
                Button1.Visible = true;
                Label1.Visible = false;
                TotalLabel.Visible = false;
                continue_link.Visible = false;
                checkout_link.Visible = false;
            }
        }
        else
        {
            f = 1;
            Label3.Text = "Guest";
            temp = (ShoppingCart)Session["cartobj"];
            if (temp == null || temp.Items == null)
            {
                f = 0;
                Label4.Visible = true;
                Button1.Visible = true;
                Label1.Visible = false;
                TotalLabel.Visible = false;
                continue_link.Visible = false;
                checkout_link.Visible = false;
            }
        }
        //temp=(ShoppingCart)Session["cartobj"];
        if (f == 1)
        {
            CartGrid.DataSource = temp.Items;
            DataBind();
            TotalLabel.Text = temp.Total.ToString();
            if (temp.Items == null)
            {
                Label1.Visible = false;
                TotalLabel.Visible = false;
                continue_link.Visible = false;
                checkout_link.Visible = false;
                Button1.Visible = true;
                Label4.Visible = true;
            }
            if (TotalLabel.Text.Equals("0"))
            {
                Label1.Visible = false;
                TotalLabel.Visible = false;
                continue_link.Visible = false;
                checkout_link.Visible = false;
                Button1.Visible = true;
                Label4.Visible = true;
            }
        }
    }

    protected void cartGrid_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CartGrid.EditIndex = e.NewEditIndex;
        CartGrid.DataSource = temp.Items;
        DataBind();
        TotalLabel.Text = temp.Total.ToString();
    }

    protected void CartGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox QuantityTextBox = (TextBox)CartGrid.Rows[e.RowIndex].Cells[3].Controls[0];
        int Quantity = Convert.ToInt32(QuantityTextBox.Text);
        if (Quantity == 0)
        {
            temp.Items.RemoveAt(e.RowIndex);
        }
        else
        {
            temp.Items[e.RowIndex].Quantity = Quantity;
        }
        CartGrid.EditIndex = -1;
        CartGrid.DataSource = temp.Items;
        DataBind();
        TotalLabel.Text = temp.Total.ToString();
    }

    protected void CartGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        CartGrid.EditIndex = -1;
        CartGrid.DataSource = temp.Items;
        DataBind();
        TotalLabel.Text = temp.Total.ToString();
    }

    protected void CartGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        temp.Items.RemoveAt(e.RowIndex);
        CartGrid.DataSource = temp.Items;
        DataBind();
        TotalLabel.Text = temp.Total.ToString();
    }
    protected void continue_link_Click(object sender, ImageClickEventArgs e)
    {
        String ret = Session["returnpath"].ToString();
        Response.Redirect(ret);
    }
    protected void checkout_link_Click(object sender, ImageClickEventArgs e)
    {
        if (!Convert.ToString(Session["Loggedin"]).Equals("True"))
        {
            Session["cartstat"] = "on";
            Response.Redirect("Signin.aspx");
        }
        else
        {
            Response.Redirect("Confirm_Order.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
