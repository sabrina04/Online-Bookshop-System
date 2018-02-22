<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm_Order.aspx.cs" Inherits="Confirm_Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Poshora :: Confirm Order</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: bold">
        <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp"
            Style="left: 0px; position: absolute; top: 0px" Width="482px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid"
            Height="29px" Style="left: 0px; position: absolute; top: 150px" Width="1058px">
        </asp:Panel>
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="154px" ImageUrl="file:///D:\Online Bookshop System\App_Data\header.bmp"
            Style="position: absolute; top: -4px; left: 482px;" />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="You must fill up all these fields."
            Visible="False"></asp:Label><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" Text="Delivery Address*"></asp:Label><br />
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="delivery_address" runat="server" Height="45px" TextMode="MultiLine"
            Width="570px" style="left: 184px; position: absolute; top: 243px"></asp:TextBox><br />
        <br />
        <br />
        &nbsp;&nbsp;<br />
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="True" Text="Payment"></asp:Label><br />
        <br />
        &nbsp;&nbsp; Credit Card Company*&nbsp;&nbsp; &nbsp;<asp:TextBox ID="cccom_text" runat="server" Width="486px"></asp:TextBox><br />
        <br />
        &nbsp;&nbsp; Credit Card Number* &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="credit_no_text" runat="server" Width="486px"></asp:TextBox><br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="continue_button" runat="server" Height="29px" OnClick="continue_button_Click"
            Text="Continue" Width="120px" Font-Bold="True" /><br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
