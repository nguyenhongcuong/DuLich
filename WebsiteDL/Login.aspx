<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Đăng Nhập
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mid" Runat="Server">
   
    <table cellpadding="0" cellspacing="0" style="width: 59%; padding:50px;">
    <tr>
        <td style="height: 19px; width: 226px"></td>
        <td style="width: 325px; height: 19px;">ĐĂNG NHẬP&nbsp;</td>
        <td style="width: 286px; height: 19px"></td>
    </tr>
    <tr>
        <td style="width: 226px">Tên đăng nhập</td>
        <td style="width: 325px">
            <asp:TextBox ID="txtId" runat="server" Width="225px"></asp:TextBox>
        </td>
        <td style="width: 286px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nhập tên đăng nhập" ForeColor="Red" ControlToValidate="txtId"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 226px">Mật Khẩu</td>
        <td style="width: 325px">
            <asp:TextBox ID="txtMk" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
        </td>
        <td style="width: 286px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nhập mật khẩu" ForeColor="Red" ControlToValidate="txtMk"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 226px">&nbsp;</td>
        <td style="width: 325px">
            <br />
            <asp:Button ID="txtLogin" runat="server" OnClick="txtLogin_Click" Text="Đăng nhập" />
        </td>
        <td style="width: 286px">&nbsp;</td>
    </tr>
</table>
   
</asp:Content>

