<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Shop_Pay_Info.aspx.cs" Inherits="Shop_Pay_Info" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333"
        HorizontalAlign="Center" Width="458px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Shop" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="shop_id" HeaderText="ID" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="pay_amount" HeaderText="Amount" ReadOnly="True" >
                <ItemStyle Font-Bold="True" />
            </asp:BoundField>
        </Columns>
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    &nbsp;&nbsp;
</asp:Content>

