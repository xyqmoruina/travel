<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="Car_Order.aspx.cs" Inherits="TotCms.Web.Member.Car_Order" %>
<%@ Register assembly="TotCms.Controls" namespace="TotCms.Controls" tagprefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="CphRight" runat="server">
<link href="../style/pages.css" rel="stylesheet" type="text/css" />
<table cellpadding="0" cellspacing="1" border="0" width="100%">
<asp:Repeater ID="RepeatList" runat="server" OnItemCommand="RepeatList_ItemCommand">
        <HeaderTemplate>          
          <tr class="suphead">
              <td style="line-height:30px;">Id</td>
              <td>名称</td>   
              <td>使用日期</td>  
              <td>价格</td>              
              <td>支付</td>         
              <td>状态</td>              
              <td>下单日期</td>              
              <td>操作</td>
          </tr>
        </HeaderTemplate>
        <ItemTemplate>
          <tr class="lines">
            <td style="line-height:30px;"><%# Eval("id") %></td>
            <td>
              <div align="left">&nbsp;<a href="/Car/Show.aspx?id=<%# Eval("CarId") %>" target="_blank"><%# Eval("Title")%></a></div>
            </td>       
            <td><%# FormatDate(Eval("UseDate"))%></td>  
            <td><%# Eval("Price")%></td>              
            <td><%# Convert.ToInt32(Eval("PaySts")) == 1 ? "已支付" : "未支付 <a class=\"red\" href=\"Car_Pay.aspx?id=" + Eval("id") + "\">支付？</a>"%></td>          
            <td><%# GetSts(Eval("OrderSts"))%></td>                  
            <td><%# FormatDate(Eval("PubDate"))%></td>            
            <td>
            <a href='../Car/Order_Ok.aspx?id=<%# Eval("id") %>' target="_blank">详情</a>            
			      |
			      <asp:LinkButton ID="LinkButton2" OnLoad="Delete_Load" runat="server" CommandName="cancel" CommandArgument='<%# Eval("id") %>'>取消</asp:LinkButton>			
			      </td>
          </tr>
         </ItemTemplate>
         </asp:Repeater>
         </table>
         <cc1:Pager ID="Pager1" runat="server" GenerateFirstLastSection="True" 
      GenerateGoToSection="True" GenerateHiddenHyperlinks="False" 
      QueryStringParameterName="CurrentPage" OnCommand="pager_Command" 
      GoToStyle="text" OfClause="/" PageClause="页" PageSize="15" />     
</asp:Content>
