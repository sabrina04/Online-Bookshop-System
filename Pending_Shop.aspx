<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Pending_Shop.aspx.cs" Inherits="Pending_Shop" Title="Poshora :: Pending Bookshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Green" Font-Size="Larger"></asp:Label>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Green" Text="There is no pending shop request."
        Visible="False" Font-Size="Larger"></asp:Label><br />
    <asp:DataList ID="DataList1" runat="server" Width="948px" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>' Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Shop ID:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text='<%# Bind("shop_id") %>'></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Address:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# Bind("address") %>'></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text="Contact Number:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ph_no") %>'></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton
                ID="LinkButton1" runat="server" CommandName="addshop" Font-Bold="True" ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Inset" BorderWidth="3px">Add</asp:LinkButton>
            &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="deleteshop" Font-Bold="True" ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset">Delete</asp:LinkButton>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    </asp:DataList><br />
    <br />
</asp:Content>

