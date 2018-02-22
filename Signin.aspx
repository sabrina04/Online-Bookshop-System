<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Poshora :: Sign In</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="left: 0px; position: absolute; top: 0px">
        <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp"
            Width="529px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="file:///D:\Online Bookshop System\App_Data\header.bmp" Style="left: 527px;
            position: absolute; top: 0px" />
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid"
            Height="29px" Style="left: 0px; position: absolute; top: 115px" Width="1013px">
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="AliceBlue" Height="351px" Style="left: 587px;
            position: absolute; top: 183px" Width="318px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Navy"
                Style="left: 115px; position: absolute; top: 16px" Text="Sign In"></asp:Label>
            <br />
            <asp:TextBox ID="email_textbox" runat="server" Height="17px" Style="left: 121px; position: absolute;
                top: 97px" Width="160px"></asp:TextBox>
            &nbsp;<br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="invalid_label" runat="server" Font-Bold="True" ForeColor="Red" Text="Invalid username or password! Try again."
                Visible="False"></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Height="21px"
                Style="left: 15px; position: absolute; top: 100px" Text="Username"></asp:Label>
            <br />
            &nbsp;&nbsp;
            <br />
            <br />
            <br />
            &nbsp;&nbsp; &nbsp;<asp:Label ID="mailadd" runat="server" Font-Bold="True" Text="Password" Width="76px"></asp:Label>
            &nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="password_textbox" runat="server" Height="18px" Width="163px" TextMode="Password"></asp:TextBox><br />
            <br />
            &nbsp;&nbsp;<br />
            &nbsp;&nbsp; &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Sign in as"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="type" runat="server">
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Bookshop</asp:ListItem>
                <asp:ListItem>Administrator</asp:ListItem>
            </asp:DropDownList>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; 
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="31px" Text="Sign In"
                Width="92px" OnClick="Button1_Click" /></asp:Panel>
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Error!" Visible="False"></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="MediumBlue"
            Style="left: 166px; position: relative; top: 8px" Text="To enjoy our facilities,"></asp:Label><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="MediumBlue"
            Style="left: 72px; position: relative; top: -16px" Text="please sign in with your username and password..."></asp:Label><br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"
            Style="left: 181px; position: relative; top: 2px" Text="New user!!!"></asp:Label><br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="file:///D:\Online Bookshop System\App_Data\signup.gif" style="left: 179px; position: absolute; top: 423px" OnClick="ImageButton1_Click" />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000040"
            Height="4px" Style="left: 132px; position: absolute; top: 379px" Text="Don't have an account?"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    </form>
</body>
</html>
