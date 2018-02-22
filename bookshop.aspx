<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="bookshop.aspx.cs" Inherits="bookshop" Title="Poshora :: Browse Bookshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Underline="True"
        Style="left: 5px; position: absolute; top: 2px" Text="Browse Bookshop" ForeColor="Black" Font-Size="Large"></asp:Label>
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:DataList ID="Datashop" runat="server" Style="left: 45px; position: absolute;
        top: 64px" Width="372px" OnItemCommand="Datashop_ItemCommand">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial"
                Font-Size="Small" Text='<%# Bind("name") %>' CommandName="select" ForeColor="Navy"></asp:LinkButton>
            <asp:Label ID="Label4" runat="server" Text='<%# Bind("shop_id") %>' Visible="False"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("address") %>' Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("ph_no") %>' Font-Bold="True"></asp:Label><br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

