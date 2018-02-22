<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddNewBook.aspx.cs" Inherits="AddNewBook" Title="Poshora :: Information of New Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Underline="True" Text="New Book Information" Font-Bold="True"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#C00000" Text="Fill up the form."
        Visible="False" Font-Size="Larger"></asp:Label><br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Title:" Font-Bold="True"></asp:Label>
    &nbsp;&nbsp; 
    <asp:TextBox ID="title_textbox" runat="server" Width="612px" style="left: 194px; position: absolute; top: 284px"></asp:TextBox>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Edition:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp; &nbsp;<asp:TextBox ID="edition_textbox" runat="server" Width="613px"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text="ISBN:" Font-Bold="True"></asp:Label>
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:TextBox ID="isbn_textbox" runat="server" Width="611px" style="left: 198px; position: absolute; top: 364px"></asp:TextBox>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text="Publisher:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp;<asp:TextBox ID="publisher_textbox" runat="server"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Text="Year of Publication:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:TextBox ID="pubyear_textbox" runat="server"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp;
    <asp:Label ID="Label7" runat="server" Text="Category:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:DropDownList ID="DropDownList_cat" runat="server" Width="316px">
    </asp:DropDownList>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label9" runat="server" Text="or Add a new category:" Font-Bold="True"></asp:Label>&nbsp;
    <asp:TextBox ID="newcategory_textbox" runat="server"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label12" runat="server" Text="Language:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="lang_textbox" runat="server"></asp:TextBox><br />
    <br />
    &nbsp; &nbsp;
    <asp:Label ID="Label8" runat="server" Text="Price:" Font-Bold="True"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:TextBox ID="price_textbox" runat="server"></asp:TextBox><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;<br />
    <br />
    &nbsp; &nbsp;<asp:Label ID="Label26" runat="server" Text="Front Cover Image:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:FileUpload
        ID="FileUpload1" runat="server" Width="602px" /><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
    <asp:Label ID="Label11" runat="server" Font-Underline="True" Text="Author Information:" Font-Bold="True"></asp:Label><br />
    <br />
    <asp:Label ID="Label13" runat="server" Text="Author 1:" Font-Bold="True"></asp:Label>&nbsp;
    &nbsp;<asp:TextBox ID="a1_textbox" runat="server" Width="277px"></asp:TextBox>
    &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True"
        Text="Author 6:"></asp:Label>
    &nbsp;&nbsp; &nbsp;<asp:TextBox ID="a6_textbox" runat="server" Width="335px"></asp:TextBox>&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <asp:Label ID="Label16" runat="server" Text="Author 2:" Font-Bold="True"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="a2_textbox" runat="server" Width="272px"></asp:TextBox>&nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="True"
        Text="Authoe 7:"></asp:Label>
    &nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="a7_textbox" runat="server" Width="334px"></asp:TextBox><br />
    <br />
    <asp:Label ID="Label19" runat="server" Text="Author 3:" Font-Bold="True"></asp:Label>&nbsp;
    &nbsp;<asp:TextBox ID="a3_textbox" runat="server" Width="270px"></asp:TextBox>
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Author 8:"></asp:Label>
    &nbsp;&nbsp; &nbsp;<asp:TextBox ID="a8_textbox" runat="server" Width="331px"></asp:TextBox><br />
    <br />
    <asp:Label ID="Label22" runat="server" Text="Author 4:" Font-Bold="True"></asp:Label>&nbsp;
    &nbsp;<asp:TextBox ID="a4_textbox" runat="server" Width="271px"></asp:TextBox>
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label18" runat="server"
        Font-Bold="True" Text="Author 9:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="a9_textbox" runat="server" Width="329px"></asp:TextBox><br />
    <br />
    <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Author 5: "></asp:Label>&nbsp;
    &nbsp;<asp:TextBox ID="a5_textbox" runat="server" Width="271px"></asp:TextBox>
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label20" runat="server"
        Font-Bold="True" Text="Author 10:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="a10_textbox" runat="server" Width="329px"></asp:TextBox><br />
    <br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Save" Width="109px" OnClick="Button1_Click" Font-Bold="True" Height="32px" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp;<br />
    <br />
    <br />
</asp:Content>

