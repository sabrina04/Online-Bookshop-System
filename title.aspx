<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="title.aspx.cs" Inherits="title" Title="Poshora :: Browse Title" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman"
        Font-Underline="True" Style="left: 7px; position: absolute; top: 2px" Text="Browse title" ForeColor="Black" Font-Size="Larger"></asp:Label>
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
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:DataList ID="Datatitle" runat="server" Style="left: 33px; position: absolute;
        top: 54px" Width="474px" OnItemCommand="Datatitle_ItemCommand">
        <ItemTemplate>
            <asp:LinkButton ID="titlelink" runat="server" Font-Bold="True" Font-Names="Arial"
                Font-Size="Small" Text='<%# Bind("title") %>' CommandName="select" ForeColor="Navy"></asp:LinkButton>
            <asp:Label ID="Label2" runat="server" Text='<%# Bind("isbn") %>' Visible="False"></asp:Label>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

