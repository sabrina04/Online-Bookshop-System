<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Advanced_search_result.aspx.cs" Inherits="Advanced_search_result" Title="Poshora :: Advanced Search Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"
        Style="left: 0px; position: relative; top: 0px" Text="Search Result" ForeColor="Black"></asp:Label>
    &nbsp; &nbsp; <asp:Label
        ID="Label6" runat="server" Font-Bold="False" Font-Size="Large" Text="Label"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
    <asp:DataList ID="resultlist" runat="server" BackColor="White" BorderColor="#CCCCCC"
        BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" Width="841px" OnItemCommand="resultlist_ItemCommand" ForeColor="Black">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Navy"
                Text='<%# Bind("title") %>' CommandName="view"></asp:LinkButton><br />
            <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl='<%# Bind("front_cover_image") %>'
                Width="152px" /><br />
            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="ISBN:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("isbn") %>' Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text="Publisher:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("publisher") %>' Font-Bold="True"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="White" CommandName="view" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset" BorderWidth="3px" Font-Names="Arial" Font-Size="Small" Height="17px" Width="83px">View Details</asp:LinkButton>&nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" ForeColor="White" CommandName="view" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset" BorderWidth="3px" Font-Names="Arial" Font-Size="Small">Add to Cart</asp:LinkButton>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
        </ItemTemplate>
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    </asp:DataList><br />
    &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;
</asp:Content>

