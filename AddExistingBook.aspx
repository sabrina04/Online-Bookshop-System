<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddExistingBook.aspx.cs" Inherits="AddExistingBook" Title="Poshora :: Book Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" style="left: -193px; position: relative; top: 3px" HorizontalAlign="Center">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>' Font-Bold="True"></asp:Label><br />
            <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl='<%# Bind("front_cover_image") %>'
                Width="159px" /><br />
            <asp:Label ID="Label2" runat="server" Text="ISBN:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Bind("isbn") %>'></asp:Label>
            <asp:Label ID="Label4" runat="server" Text=", Edition:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# Bind("edition") %>'></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Publisher:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text='<%# Bind("publisher") %>'></asp:Label>
            <asp:Label ID="Label8" runat="server" Text=", Year:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text='<%# Bind("pub_year") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#C00000" Style="left: 334px;
        position: absolute; top: 606px" Text="Please enter price." Visible="False"></asp:Label>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Black" Style="left: 174px;
        position: absolute; top: 534px" Text="Author(s):" Font-Underline="True"></asp:Label>
    &nbsp;
    <asp:Button ID="exs_button" runat="server" OnClick="exs_button_Click" Style="left: 371px;
        position: absolute; top: 656px" Text="Add this book" Font-Bold="True" />
    <asp:TextBox ID="TextBox1" runat="server" Style="left: 267px; position: absolute;
        top: 605px" Width="50px"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" Style="left: 175px; position: absolute; top: 607px"
        Text="Enter Price:" Font-Bold="True" ForeColor="Black"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="21px" Style="left: 251px; position: absolute;
        top: 533px" Width="572px">
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </asp:Panel>
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

