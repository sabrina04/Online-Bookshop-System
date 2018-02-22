<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Change_User_Password.aspx.cs" Inherits="Change_User_Password" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
        Text="Label" Visible="False"></asp:Label><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True"
        Text="E-Mail Address: "></asp:Label>
    &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="327px"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True"
        Text="Current Password: "></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="326px" TextMode="Password"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="New Password: "></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="325px" TextMode="Password"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Confirm Password: "></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="328px"></asp:TextBox><br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True"
        Height="31px" OnClick="Button1_Click" Text="Change Password" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
    <br />
</asp:Content>

