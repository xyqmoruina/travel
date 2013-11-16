<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="BankHis.aspx.cs" Inherits="TotCms.Web.Member.BankHis" %>
<%@ Register assembly="TotCms.Controls" namespace="TotCms.Controls" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
  <link href="/js/calendar.css" rel="stylesheet" type="text/css" />
<link href="../style/pages.css" rel="stylesheet" type="text/css" />
<script src="/js/calendar.js" type="text/javascript"></script>
<div class="main_line">支付明细</div>
    
    <table style="width: 100%;">
        <tr>
            <td align="center">
                类型：<asp:RadioButtonList ID="RbPayType" runat="server" 
                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="1">充值</asp:ListItem>
                    <asp:ListItem Value="2">支出</asp:ListItem>
                </asp:RadioButtonList>
&nbsp; 起止日期：<asp:TextBox ID="DateFrom" runat="server" 
                    onload="DateFrom_Load" ReadOnly="True" Width="90px"></asp:TextBox>
                -<asp:TextBox ID="DateTo" runat="server" 
                    onload="DateTo_Load" ReadOnly="True" Width="90px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" />
             </td>
        </tr>
        <tr>
            <td align="center">
             <table cellpadding="0" cellspacing="1" border="0" width="100%">  
      <asp:Repeater ID="RepeatList" runat="server">
        <HeaderTemplate>
          <tr class="suphead">
              <td>名称</td>               
              <td>类型</td>
              <td>数额</td>
              <td>日期</td>
          </tr>
        </HeaderTemplate>
        <ItemTemplate>
          <tr class="lines">
            <td><div align="left">&nbsp;<%# Eval("Title")%></div></td>            
            <td><div align="center"><%# GetPayType(Eval("PayType"))%></div></td>
            <td><div align="center"><%# Eval("Money")%></div></td>
            <td><div align="center"><%# Eval("PubDate")%></div></td>
          </tr>
         </ItemTemplate>
         </asp:Repeater>      
      
    </table>
             </td>
        </tr>
        <tr>
            <td align="center">
                <cc1:Pager ID="Pager1" runat="server" GenerateFirstLastSection="True" 
      GenerateGoToSection="True" GenerateHiddenHyperlinks="False" 
      QueryStringParameterName="CurrentPage" OnCommand="pager_Command" 
      GoToStyle="text" OfClause="/" PageClause="页" PageSize="15" />
            </td>
        </tr>
    </table>
</asp:Content>
