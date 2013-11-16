<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="TotCms.Web.Member.Balance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
<table style="width:100%;" border="0" cellpadding="0" cellspacing="1" 
      class="black_border">
      <tr class="suphead">
        <td>
                                                                                查看余额</td>
    </tr>
    <tr>
      <td align="center" height="50">
        <asp:Label ID="Label1" runat="server" CssClass="red"></asp:Label>
      </td>
    </tr>
    <tr>
      <td align="center" height="50">
        
        <a href="BankOnline.aspx">[在线充值]</a>
        <a href="BankHis.aspx">[充值记录]</a>
        </td>
    </tr>
    </table>
</asp:Content>
