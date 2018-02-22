<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Sale_Info.aspx.cs" Inherits="Sale_Info" Title="Poshora :: Sale Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label2" runat="server" Text="Sale information of" Font-Bold="True" ForeColor="Black"></asp:Label>
    &nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="274px">
        <asp:ListItem>Today</asp:ListItem>
        <asp:ListItem>Last 7 days</asp:ListItem>
        <asp:ListItem>Last 15 days</asp:ListItem>
        <asp:ListItem>Last 30 days</asp:ListItem>
    </asp:DropDownList>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="view_button" runat="server" OnClick="view_button_Click"
        Text="View" Font-Bold="True" Width="59px" />&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0000C0" Text="Label"
        Visible="False"></asp:Label><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" Width="641px" ForeColor="Black" GridLines="Vertical">
        <Columns>
            <asp:BoundField DataField="saling_date" HeaderText="Selling Date" ReadOnly="True" />
            <asp:BoundField DataField="title" HeaderText="Title" ReadOnly="True" />
            <asp:BoundField DataField="isbn" HeaderText="ISBN" ReadOnly="True" />
            <asp:BoundField DataField="fname" HeaderText="Customer's First Name" ReadOnly="True" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" ReadOnly="True" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" ReadOnly="True" />
            <asp:BoundField DataField="total" HeaderText="Total" ReadOnly="True" />
        </Columns>
        <RowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <br />
    <br />
    <br />
</asp:Content>

