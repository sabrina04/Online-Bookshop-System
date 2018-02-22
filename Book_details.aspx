<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Book_details.aspx.cs" Inherits="Book_details" Title="Poshora :: Book Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" Style="position: relative; top: 10px">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="172px" ImageUrl='<%# Bind("front_cover_image") %>'
                Width="190px" />
        </ItemTemplate>
    </asp:DataList>
    &nbsp;
    <asp:DropDownList ID="shop_dropdownlist" runat="server" Style="left: 334px;
        position: absolute; top: 752px" Width="182px">
    </asp:DropDownList>
    &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;
    <asp:LinkButton ID="addcart_link" runat="server" Font-Bold="True" Style="left: 669px;
        position: absolute; top: 820px" OnClick="addcart_link_Click" ForeColor="AliceBlue" BackColor="DarkBlue" BorderColor="DarkBlue" BorderStyle="Outset" BorderWidth="5px">Add to Cart</asp:LinkButton>
    <asp:Label ID="Label17" runat="server" Font-Bold="True" Style="left: 219px; position: absolute;
        top: 758px" Text="Choose Shop:" ForeColor="Black"></asp:Label>
    &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="True"
        Style="left: 216px; position: absolute; top: 712px" Text="Buy this book" ForeColor="Black"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label16" runat="server" Style="left: 219px; position: absolute; top: 315px"
        Text="The book is available in the following bookshops." Font-Bold="True" ForeColor="Black"></asp:Label>
    &nbsp;
    <asp:DataList ID="DataList3" runat="server" Style="left: 212px; position: absolute;
        top: 194px" Width="364px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="ISBN:"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# Bind("isbn") %>'></asp:Label>
            &nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text=", Edition:"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text='<%# Bind("edition") %>'></asp:Label><br />
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Publisher:"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text='<%# Bind("publisher") %>'></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Publishing Year:"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text='<%# Bind("pub_year") %>'></asp:Label><br />
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Language:"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text='<%# Bind("lang") %>'></asp:Label><br />
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Category:"></asp:Label>
            <asp:Label ID="Label14" runat="server" Text='<%# Bind("category_") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="left: 211px; position: absolute;
        top: 80px" Text="Author(s):" ForeColor="Black"></asp:Label>
    <asp:DataList ID="DataList2" runat="server" Style="left: 290px; position: absolute;
        top: 81px">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>' ForeColor="Black"></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="title_label" runat="server" Font-Bold="True" Font-Size="X-Large" Style="left: 209px;
        position: absolute; top: 48px" Text="Label" ForeColor="Black"></asp:Label>
    &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    &nbsp; &nbsp; &nbsp;
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC"
        BorderStyle="None" BorderWidth="1px" CellPadding="4"
        Style="left: 214px; position: absolute; top: 371px" AutoGenerateColumns="False" Width="270px" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Shop" ReadOnly="True" />
            <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
        </Columns>
        <RowStyle Font-Size="Medium" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label18" runat="server" Font-Bold="True" Style="left: 544px; position: absolute;
        top: 753px" Text="Choose Quantity:" ForeColor="Black"></asp:Label>
    <asp:DropDownList ID="qty_dropdownlist" runat="server" Style="left: 690px; position: absolute;
        top: 749px" Width="51px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

