<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Customer_Order_Details.aspx.cs" Inherits="Customer_Order_Details" Title="Poshora :: Customer Order Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Underline="True"
        ForeColor="Black" Text="Customer's Information:"></asp:Label>&nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True" ForeColor="Black"></asp:Label>&nbsp;
    <asp:Label ID="fname_label" runat="server" Text="Label" ForeColor="Black"></asp:Label>&nbsp;
    <asp:Label ID="lname_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Email Address:" Font-Bold="True" ForeColor="Black"></asp:Label>&nbsp;&nbsp;<asp:Label ID="mail_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Address:" Font-Bold="True" ForeColor="Black"></asp:Label>&nbsp;&nbsp;<asp:Label ID="addrs_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label15" runat="server" Text="Order Date:" Font-Bold="True" ForeColor="Black"></asp:Label>&nbsp;&nbsp;<asp:Label ID="order_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label16" runat="server" Text="Delivery Date:" Font-Bold="True" ForeColor="Black"></asp:Label>&nbsp;
    <asp:Label ID="del_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    <br />
    &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black"
        Text="Credit Card:"></asp:Label><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label4" runat="server" Text="Credit Card Company:" Font-Bold="True" ForeColor="Black"></asp:Label>&nbsp;&nbsp;<asp:Label ID="com_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label5" runat="server" Text="Credit Card Number:" Font-Bold="True" ForeColor="Black"></asp:Label>
    &nbsp;&nbsp;
    <asp:Label ID="num_label" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
    <br />
    &nbsp;&nbsp;
    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black"
        Text="Book List:"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="Green" Text="Label"
        Visible="False"></asp:Label><br />
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%# Bind("title") %>' Font-Bold="True"></asp:Label><br />
            <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl='<%# Bind("front_cover_image") %>'
                Width="136px" /><br />
            <asp:Label ID="Label7" runat="server" Text="ISBN:" Font-Bold="True"></asp:Label>&nbsp;
            <asp:Label ID="Label8" runat="server" Text='<%# Bind("isbn") %>'></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Text="Edition" Font-Bold="True"></asp:Label>&nbsp;
            <asp:Label ID="Label10" runat="server" Text='<%# Bind("edition") %>'></asp:Label><br />
            <asp:Label ID="Label11" runat="server" Text="Quantity:" Font-Bold="True"></asp:Label>&nbsp;
            <asp:Label ID="Label12" runat="server" Text='<%# Bind("quantity") %>'></asp:Label><br />
            <asp:Label ID="Label13" runat="server" Text="Price:" Font-Bold="True"></asp:Label>&nbsp;
            <asp:Label ID="Label14" runat="server" Text='<%# Bind("total") %>'></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="updated" Font-Bold="True" ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset" BorderWidth="3px">Delivered</asp:LinkButton>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;
        </ItemTemplate>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    </asp:DataList><br />
    <br />
</asp:Content>

