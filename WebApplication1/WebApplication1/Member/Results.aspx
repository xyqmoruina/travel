<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="TotCms.Web.Member.Results" MasterPageFile="~/Member/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
<table style="width:100%;" border="0" cellpadding="0" cellspacing="1" 
      class="black_border">
      <tr class="suphead">
        <td>
                                                                                操作结果</td>
    </tr>
    <tr>
      <td align="center" height="50">
        <asp:Label ID="Label1" runat="server"></asp:Label>
      </td>
    </tr>
    <tr>
      <td align="center" height="50">
        <asp:HyperLink ID="BackUrl" runat="server"><< 返回上一页</asp:HyperLink></td>
    </tr>
    </table>
</asp:Content>
