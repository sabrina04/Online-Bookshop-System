<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_user.aspx.cs" Inherits="Register_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Poshora :: User Registration Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="left: 0px; position: absolute; top: 0px">
        <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="file:///D:\Online Bookshop System\App_Data\main.bmp"
            Width="531px" /></div>
        <asp:Panel ID="Panel1" runat="server" BackColor="SkyBlue" BorderColor="SkyBlue" BorderStyle="Solid"
            Height="29px" Style="left: 1px; position: absolute; top: 153px" Width="1085px">
            <asp:Image ID="Image2" runat="server" Height="158px" ImageUrl="file:///D:\Online Bookshop System\App_Data\header.bmp"
                Style="left: 514px; position: absolute; top: -164px" Width="558px" />
        </asp:Panel>
        &nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; 
        <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#C00000" Text="ERROR!  Please fill up the form correctly."
            Visible="False"></asp:Label>
        &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Please complete the form below then click Submit - required fields are indicated with *"></asp:Label><br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" Text="Name and Billing Address"></asp:Label><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="*First Name:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="fname_textbox" runat="server" Height="20px" Style="left: 52px; position: relative;
            top: 3px" Width="454px"></asp:TextBox><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="lname_textbox" runat="server" Height="20px" Style="left: 152px;
            position: relative; top: 7px" Width="453px"></asp:TextBox><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="left: -17px; position: relative;
            top: -13px" Text="*Last Name:"></asp:Label>
        &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="left: 93px; position: relative;
            top: 29px" Text="*Address:" Width="80px"></asp:Label><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox ID="address_textbox"
            runat="server" Height="73px" TextMode="MultiLine" Width="456px"></asp:TextBox><br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="left: 93px; position: relative;
            top: 37px" Text="Contact No."></asp:Label><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="contact_textbox" runat="server" Width="459px"></asp:TextBox>&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Smaller" Style="left: 264px;
            position: absolute; top: 530px" Text="(Each number must be seperated by comma.)"></asp:Label>
        <br />
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Underline="True" Style="left: -23px;
            position: relative; top: 8px" Text="Username and Password"></asp:Label><br />
        <br />
        &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Please enter your e-mail address as your username then a password of your choice."></asp:Label><br />
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Style="left: 91px; position: relative;
            top: 13px" Text="*username:"></asp:Label><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Style="left: 9px; position: relative;
            top: 22px" Text="*Password:"></asp:Label>
        <asp:TextBox ID="username_textbox" runat="server" Height="20px" Style="left: 97px;
            position: relative; top: -26px" Width="470px"></asp:TextBox><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="password_textbox"
            runat="server" TextMode="Password" Width="217px"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Style="left: 91px; position: relative;
            top: 16px" Text="*Re-enter password:"></asp:Label>
        <asp:TextBox ID="retypepass_textbox" runat="server" Style="left: 117px; position: relative;
            top: 11px" TextMode="Password" Width="214px"></asp:TextBox><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Underline="True" Text="Credit Card Information"></asp:Label><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="*Credit Card No.:"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="ccno_textbox" runat="server" Width="218px"></asp:TextBox><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="*Credit Card's Company:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="cccom_textbox" runat="server" Width="216px"></asp:TextBox><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Large" Height="35px" OnClick="Button1_Click" Text="Submit" Width="106px" /><br />
        <br />
        <br />
    </form>
</body>
</html>
