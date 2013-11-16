<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="PayResult.aspx.cs" Inherits="TotCms.Web.Member.PayResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
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
        <a href="Balance.aspx">查看余额</a>
        <a href="BankOnline.aspx">继续充值</a>
        <a href="BankHis.aspx">充值记录</a>
        </td>
    </tr>
    </table>
</asp:Content>
