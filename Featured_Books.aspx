<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Featured_Books.aspx.cs" Inherits="Featured_Books" Title="Poshora :: Featured Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large"
        Font-Underline="True" Text="Featured Books"></asp:Label><br />
    <asp:DataList ID="DataList1" runat="server" Width="810px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="view" Font-Bold="True"
                ForeColor="Navy" Text='<%# Bind("title") %>'></asp:LinkButton><br />
            <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl='<%# Bind("front_cover_image") %>'
                Width="157px" /><br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="ISBN: "></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Bind("isbn") %>'></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Publisher: "></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Bind("publisher") %>'></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="view" Font-Bold="True"
                ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset" BorderWidth="3px">View More</asp:LinkButton>
            &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="view" Font-Bold="True"
                ForeColor="White" BackColor="SteelBlue" BorderColor="SteelBlue" BorderStyle="Outset" BorderWidth="3px">Add to Cart</asp:LinkButton>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>

