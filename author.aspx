<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="author.aspx.cs" Inherits="author" Title="Poshora :: Browse Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"
        Font-Underline="True" Style="left: 7px; position: absolute; top: 4px" Text="Browse Author" ForeColor="Black"></asp:Label>
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:DataList ID="Dataauthor" runat="server" Height="123px" Style="left: 42px; position: absolute;
        top: 55px" Width="352px" OnItemCommand="Dataauthor_ItemCommand">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial"
                Font-Size="Small" Text='<%# Bind("name") %>' CommandName="select" ForeColor="Navy"></asp:LinkButton>
            <br />
        </ItemTemplate>
        <SelectedItemTemplate>
            &nbsp;
        </SelectedItemTemplate>
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

