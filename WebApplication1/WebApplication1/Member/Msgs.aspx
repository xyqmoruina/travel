<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="Msgs.aspx.cs" Inherits="TotCms.Web.Member.Msgs" %>
<%@ Register assembly="TotCms.Controls" namespace="TotCms.Controls" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
  <link href="../style/pages.css" rel="stylesheet" type="text/css" />
<div class="main_line">站内短消息</div>
    <div class="br"></div>
    <table cellpadding="0" cellspacing="1" border="0" width="100%">
      <tr>
        <td colspan="4" class="topic">        
        <a href="?isread=-1">全部</a>&nbsp;<a href="?isread=1">已读</a>&nbsp;<a href="?isread=0">未读</a></td>
      </tr>   
      <asp:Repeater ID="ArticleList" runat="server" OnItemCommand="ArticleList_ItemCommand">
        <HeaderTemplate>
          <tr class="suphead">
              <td width="60%" style="text-align:left; padding-left:5px;">标题</td>              
              <td width="10%">已读</td>
              <td>日期</td>
              <td width="10%">操作</td>
          </tr>
        </HeaderTemplate>
        <ItemTemplate>
          <tr class="lines">
            <td style="text-align:left; padding-left:5px;"><div align="left">&nbsp;<a href="Msg_Show.aspx?id=<%# Eval("id") %>"><%# Eval("Title")%></a></div></td>
            <td><%# Convert.ToInt32(Eval("IsRead")) == 0 ? "No" : "Yes"%></td>
            <td><%# Eval("PubDate")%></td>
            <td>
						<asp:LinkButton ID="LinkButton2" OnLoad="Delete_Load" runat="server" CommandName="delete" CommandArgument='<%# Eval("id") %>'>删除</asp:LinkButton>            </td>
          </tr>
         </ItemTemplate>
         </asp:Repeater>
         <tr>
          <td colspan="4" align="center">
              <cc1:Pager ID="Pager1" runat="server" GenerateFirstLastSection="True" 
      GenerateGoToSection="True" GenerateHiddenHyperlinks="False" 
      QueryStringParameterName="CurrentPage" OnCommand="pager_Command" 
      GoToStyle="text" OfClause="/" PageClause="页" PageSize="15" />
          </td>
         </tr>
      
    </table>
</asp:Content>
