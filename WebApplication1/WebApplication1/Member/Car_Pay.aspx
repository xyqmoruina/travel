<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="Car_Pay.aspx.cs" Inherits="TotCms.Web.Member.Car_Pay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
<div class="main_line">
  <asp:Label ID="lbTitle" runat="server"></asp:Label>
  </div>
  <div class="subline">支付费用：<asp:Label ID="lbPrice" runat="server" CssClass="red"></asp:Label>元
    &nbsp;您的帐户余额：<asp:Label ID="lbBalance" runat="server" CssClass="red"></asp:Label>元&nbsp; 
    [<a href="BankOnline.aspx">在线充值</a>]</div>
  <script type="text/javascript">
    function cfm() {
      return confirm("确定支付吗？");
    }
  </script>
  <div class="msg">
    <asp:Button ID="Button1" runat="server" Text="确定支付" 
      OnClientClick="return cfm()" onclick="Button1_Click" />
  </div>
  <p align="center"><a href="javascript:history.back();">返回</a></p>
</asp:Content>