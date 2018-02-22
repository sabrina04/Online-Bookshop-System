<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="result_type.aspx.cs" Inherits="result_type" Title="Poshora :: Search Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="True"
        ForeColor="Black" Height="22px" Style="left: 1px; position: absolute; top: 0px"
        Text="Search Result" Width="217px"></asp:Label>
    &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
    <asp:DataList ID="typelist" runat="server" BackColor="White" BorderColor="#CCCCCC"
        BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" Width="861px" OnItemCommand="typelist_ItemCommand" ForeColor="Black">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Navy"
                Text='<%# Bind("title") %>' CommandName="more"></asp:LinkButton><br />
            <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl='<%# Bind("front_cover_image") %>'
                Width="138px" /><br />
            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Text="ISBN:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("isbn") %>' Font-Bold="True"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="Publisher:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("publisher") %>' Font-Bold="True"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="view" Font-Bold="True" ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Inset" BorderWidth="3px">View Details</asp:LinkButton>
            &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cart" Font-Bold="True" ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Inset" BorderWidth="3px">Add to Cart</asp:LinkButton>
        </ItemTemplate>
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    </asp:DataList><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

