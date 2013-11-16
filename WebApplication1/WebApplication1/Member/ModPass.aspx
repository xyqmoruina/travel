<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModPass.aspx.cs" Inherits="TotCms.Web.Member.ModPass" MasterPageFile="~/Member/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <div class="main_line">修改密码</div>
    <div class="br"></div>
    
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td height="32">
                原密码：</td>
            <td>
                <asp:TextBox ID="OldPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="OldPass" ErrorMessage="请输入原密码"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td height="32">
                新密码：</td>
            <td>
                <asp:TextBox ID="NewPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="NewPass" ErrorMessage="请输入新密码"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td height="32">
                确认密码：</td>
            <td>
                <asp:TextBox ID="ConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ConfirmPass" ErrorMessage="请确认您的密码"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td height="50">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确 定" 
                  CssClass="new-btn-login" />
            </td>
        </tr>
    </table>
    
</asp:Content>