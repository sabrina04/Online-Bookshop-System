<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_shop.aspx.cs" Inherits="Register_shop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Poshora :: Bookshop Registration Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="left: 0px; position: absolute; top: 0px">
    
    </div>
        <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp"
            Style="left: 0px; position: absolute; top: 0px" Width="479px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid"
            Height="29px" Style="left: -8px; position: absolute; top: 151px" Width="1006px">
        </asp:Panel>
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="151px" ImageUrl="file:///D:\Online Bookshop System\App_Data\header.bmp"
            Style="left: 478px; position: absolute; top: 0px" Width="534px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Please complete the form below then click Submit - required fields are indicated with *"></asp:Label><br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" Text="Primary Information"></asp:Label><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="left: 49px; position: relative;
            top: -5px" Text="*Shop Name:"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp; &nbsp; 
        <asp:TextBox ID="sname_textbox" runat="server" Height="19px" Width="414px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="left: 0px; position: relative;
            top: -20px" Text="*Address:"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="addr_textbox" runat="server" Height="49px" TextMode="MultiLine"
            Width="412px"></asp:TextBox><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True"
            Style="left: 10px; position: relative; top: 10px" Text="Contact No."></asp:Label>
        <asp:TextBox ID="cont_textbox" runat="server" Style="left: 83px; position: relative;
            top: 7px" Width="412px"></asp:TextBox><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Smaller" Style="left: 221px;
            position: absolute; top: 441px" Text="(Each number must be seperated by comma.)"></asp:Label>
        &nbsp;&nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Style="left: 0px; position: relative;
            top: 22px" Text="*Password:"></asp:Label><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:TextBox ID="password_textbox1" runat="server" TextMode="Password" Width="411px"></asp:TextBox><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Style="left: 0px; position: relative;
            top: 22px" Text="*Re-enter password:"></asp:Label><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:TextBox ID="retype_textbox" runat="server" TextMode="Password" Width="405px"></asp:TextBox><br />
        <br />
        <br />
        <asp:Button ID="submit_button" runat="server" Font-Bold="True" Height="34px" OnClick="submit_button_Click"
            Style="left: 348px; position: relative; top: 5px" Text="Submit" Width="89px" /><br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
    </form>
</body>
</html>
