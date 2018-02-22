<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Update_Payment.aspx.cs" Inherits="Update_Payment" Title="Poshora :: Update Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Green"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Text="Shop :" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="455px">
    </asp:DropDownList><br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Amount:" Font-Bold="True"></asp:Label>&nbsp;
    <asp:TextBox ID="amount_textbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label4" runat="server" ForeColor="#C00000" Text="Fill up the amount."
        Visible="False" Font-Bold="True"></asp:Label>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Update"
        Width="101px" Font-Bold="True" />
    &nbsp; &nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

