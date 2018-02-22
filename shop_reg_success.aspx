<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop_reg_success.aspx.cs" Inherits="shop_reg_success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Poshora :: Successful Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp"
            Style="left: 0px; position: absolute; top: -2px" Width="472px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid"
            Height="29px" Style="left: -3px; position: absolute; top: 135px" Width="1068px">
        </asp:Panel>
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="134px" ImageUrl="file:///D:\Online Bookshop System\App_Data\header.bmp"
            Style="left: 471px; position: absolute; top: 0px" Width="612px" />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Your ID is --   "></asp:Label>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True"
            Font-Size="Medium" Text="Your membership is now pending. The administrator  will verify all information and then add your shop to the registered shop list."></asp:Label><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Text="After adding your shop, then you can access your account with the shop id and password."></asp:Label><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Button ID="backhome_button" runat="server" Font-Bold="True" Height="30px" OnClick="backhome_button_Click"
            Text="Back to Home" Width="141px" /></div>
    </form>
</body>
</html>
