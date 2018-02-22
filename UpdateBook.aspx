<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UpdateBook.aspx.cs" Inherits="UpdateBook" Title="Poshora :: Update Price" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Green" Text="Label"
        Visible="False" Font-Size="Larger"></asp:Label><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Text="Select Book:" Font-Bold="True" ForeColor="Black"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Width="504px">
    </asp:DropDownList><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label2" runat="server" Text="Enter  ISBN:" Font-Bold="True" ForeColor="Black"></asp:Label>
    &nbsp; &nbsp; 
    <asp:TextBox ID="TextBox1" runat="server" Width="494px"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
    <br />
    &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Button ID="go_button" runat="server" OnClick="go_button_Click" Text="Go" Width="56px" Font-Bold="True" /><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#000040"
        Text="Book's Information" Visible="False"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="title_label" runat="server" Font-Bold="True" ForeColor="#000040" Text="Label"
        Visible="False"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;<asp:Label ID="Label3" runat="server" Text="ISBN:" Visible="False" Font-Bold="True" ForeColor="#000040"></asp:Label>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="isbn_label" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="#000040"></asp:Label><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;<asp:Label ID="Label4" runat="server" Text="Price:" Visible="False" Font-Bold="True" ForeColor="#000040"></asp:Label>
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="price_textbox" runat="server" Visible="False"></asp:TextBox>
    &nbsp; &nbsp; 
    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#C00000" Text="*price"
        Visible="False"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Button ID="update_button" runat="server" OnClick="update_button_Click" Text="Update"
        Visible="False" Font-Bold="True" /><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;
    <br />
    <br />
    <br />
</asp:Content>

