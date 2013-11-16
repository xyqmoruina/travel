<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Article_Show.aspx.cs" Inherits="TotCms.Web.Member.Article_Show" MasterPageFile="~/Member/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <div class="main_line">查看文章</div>
    <div class="br">
        <table cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td width="80">
                    标题：</td>
                <td>
                    <asp:Label ID="LbTitle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    作者：</td>
                <td>
                    <asp:Label ID="LbAuthor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    出自：</td>
                <td>
                    <asp:Label ID="LbSourceFrom" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    内容：</td>
                <td valign="top">
                    <asp:Label ID="LbContent" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    日期：</td>
                <td>
                    <asp:Label ID="LbPubDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="55">
                    <input id="Button1" type="button" value="返 回" onclick="javascript:history.back();" /></td>
            </tr>
        </table>
    </div>
    
</asp:Content>