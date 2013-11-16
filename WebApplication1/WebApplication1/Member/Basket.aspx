<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="TotCms.Web.Member.Basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
  <table width="100%" cellpadding="0" cellspacing="0">
    <tr>
      <td class="main_line" width="45%">名称</td>
      <td class="main_line" width="10%">价格</td>
      <td class="main_line" width="7%">支付</td>
      <td class="main_line" width="10%">发货</td>
      <td class="main_line" width="20%">日期</td>
      <td class="main_line" width="8%">详情</td>
    </tr>
    <asp:Literal ID="liDiv" runat="server"></asp:Literal>
    </table>
</asp:Content>
