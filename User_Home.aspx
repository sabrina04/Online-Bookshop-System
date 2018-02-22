<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Home.aspx.cs" Inherits="User_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Poshora :: User Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp" Style="left: -1px;
            position: absolute; top: 0px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid"
            Height="29px" Style="left: 0px; position: absolute; top: 155px" Width="1013px">
        </asp:Panel>
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large"
            ForeColor="Green" Text="Label" Visible="False"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Hi, "></asp:Label>&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large"
            Text="Label"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp;
        <asp:Image ID="Image3" runat="server" Height="134px" ImageUrl="file:///D:\Online Bookshop System\App_Data\Buddy.png"
            Width="149px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
            Style="position: absolute" Text="You can "></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" ForeColor="#0000C0" OnClick="LinkButton1_Click" Style="left: 304px;
            position: absolute; top: 306px">Change Password</asp:LinkButton>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" ForeColor="#0000C0" OnClick="LinkButton2_Click" Style="left: 303px;
            position: absolute; top: 333px">View Order History</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Arial"
            Font-Size="Small" ForeColor="#0000C0" Style="left: 837px; position: absolute;
            top: 164px" OnClick="LinkButton3_Click" Width="68px">Sign Out</asp:LinkButton>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="32px" OnClick="Button1_Click"
            Style="left: 375px; position: absolute; top: 399px" Text="Back to Home" Width="140px" />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="file:///D:\Online Bookshop System\App_Data\header.bmp" Style="left: 519px;
            position: absolute; top: 0px" /><asp:Image ID="Image4" runat="server" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp" Style="left: -1px;
            position: absolute; top: 0px" />
    
    </div>
    </form>
</body>
</html>
