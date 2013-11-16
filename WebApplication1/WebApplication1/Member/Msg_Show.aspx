<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="Msg_Show.aspx.cs" Inherits="TotCms.Web.Member.Msg_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
  <div class="main_line">
  <asp:Label ID="lbTitle" runat="server"></asp:Label>
  </div>
  <div class="subline">来源：<asp:Label ID="lbFrom" runat="server"></asp:Label>
&nbsp;日期：<asp:Label ID="lbDate" runat="server"></asp:Label>
  </div>
  
  <div class="content"><asp:Label ID="lbContent" runat="server"></asp:Label></div>
  <p align="center"><a href="Msgs.aspx">返回</a></p>
</asp:Content>
