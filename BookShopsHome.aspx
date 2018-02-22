<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BookShopsHome.aspx.cs" Inherits="BookShopsHome" Title="Poshora :: Bookshop's Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" style="left: 0px; position: relative; top: 36px" ForeColor="Black" Width="939px">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Name:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# Bind("fname") %>'></asp:Label>&nbsp;
            <asp:Label ID="Label3" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
            <asp:Label ID="Label11" runat="server" Text='<%# Bind("cart_id") %>' Visible="False"></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Text='Email Address: ' Font-Bold="True"></asp:Label>&nbsp;
            <asp:Label ID="Label12" runat="server" Text='<%# Bind("email_add") %>'></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Address:"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# Bind("address") %>'></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Order date:"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text='<%# Bind("order_date") %>'></asp:Label>
            &nbsp;&nbsp;&nbsp;<br />
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Delivery Date: "></asp:Label>
            &nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Bind("delivery_date") %>'></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:LinkButton
                ID="LinkButton1" runat="server" CommandName="order" Font-Bold="True" ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset">View Details</asp:LinkButton>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
        </ItemTemplate>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#C00000" Style="left: 296px;
        position: absolute; top: 282px" Text="You don't have any order." Visible="False" Font-Size="Larger"></asp:Label>
</asp:Content>

