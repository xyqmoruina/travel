<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="TotCms.Web.Member.Articles" MasterPageFile="~/Member/Member.Master" %>
<%@ Register assembly="TotCms.Controls" namespace="TotCms.Controls" tagprefix="cc1" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
<link href="../style/pages.css" rel="stylesheet" type="text/css" />
    <div class="main_line">文章管理</div>
    <div class="br"></div>
    <table cellpadding="0" cellspacing="1" border="0" width="100%">
      <tr>
        <td colspan="6" class="topic">        
        &nbsp;<a href="Article_Add.aspx">发表文章</a>&nbsp;<a href="?ischeck=0">等待审核</a>&nbsp;<a href="?ischeck=1">通过审核</a></td>
      </tr>   
      <asp:Repeater ID="ArticleList" runat="server" OnItemCommand="ArticleList_ItemCommand">
        <HeaderTemplate>
          <tr class="suphead">
              <td>标题</td>              
              <td>审核</td>
              <td>日期</td>
              <td>操作</td>
          </tr>
        </HeaderTemplate>
        <ItemTemplate>
          <tr class="lines">
            <td><div align="left">&nbsp;<a href="Article_Show.aspx?id=<%# Eval("id") %>"><%# Eval("Title")%></a></div></td>
            <td><%# Convert.ToInt32(Eval("IsCheck")) == 0 ? "等待审核" : "通过审核"%></td>
            <td><%# Eval("PubDate")%></td>
            <td>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit" CommandArgument='<%# Eval("id") %>'>编辑</asp:LinkButton>
						|
						<asp:LinkButton ID="LinkButton2" OnLoad="Delete_Load" runat="server" CommandName="delete" CommandArgument='<%# Eval("id") %>'>删除</asp:LinkButton>            </td>
          </tr>
         </ItemTemplate>
         </asp:Repeater>
         <tr>
          <td colspan="6" align="center">
              <cc1:Pager ID="Pager1" runat="server" GenerateFirstLastSection="True" 
      GenerateGoToSection="True" GenerateHiddenHyperlinks="False" 
      QueryStringParameterName="CurrentPage" OnCommand="pager_Command" 
      GoToStyle="text" OfClause="/" PageClause="页" PageSize="15" />
          </td>
         </tr>
      
    </table>
</asp:Content>