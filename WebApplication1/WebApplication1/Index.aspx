<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Member.Index" MasterPageFile="~/Member.Master" %>

<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <!DOCTYPE html>

    <script src="../js/jquery.js" type="text/javascript"></script>
  <script src="../js/jquery-ui/js/jquery-ui-min.js" type="text/javascript"></script>
  <link href="../js/jquery-ui/css/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript">
      $(function () {
          $("#tabs").tabs();
      });
  </script>
  <table align="center" cellpadding="0" cellspacing="0" width="100%">
    <tr>
      <td align="center" rowspan="5" width="200">
        <asp:Image ID="imPhoto" runat="server" Height="116px" Width="107px" />
      </td>
      <td height="28">
        <asp:Label ID="lbUserId" runat="server"></asp:Label>
        您好！　驴行天下欢迎您~</td>
    </tr>
    <tr>
      <td height="25">
        帐户余额：<span class="red"><asp:Label ID="lbBlance" runat="server"></asp:Label>
        </span>元 [<a href="BankHis.aspx">查看明细</a>]</td>
    </tr>
    <tr>
      <td height="25">
        站内短信：<a href="Msgs.aspx"><span class="red"><asp:Label ID="lbMsgNum" runat="server"></asp:Label>
        </span>条未读短信</a></td>
    </tr>
    <tr>
      <td height="25">
        手机：<asp:Label ID="lbMobile" runat="server"></asp:Label>
      </td>
    </tr>
    <tr>
      <td height="25">
        邮箱：<asp:Label ID="lbMail" runat="server"></asp:Label>
      &nbsp;[<a href="ModInfo.aspx">修改资料</a>]</td>
    </tr>
  </table>
  <div class="bigbr"></div>
  <div id="tabs">
      <p style="margin-left: 40px">
          <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/lvyou.aspx">Have a look</asp:LinkButton>
      </p>
      <p style="margin-left: 40px">
          <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/team.aspx">Have a team</asp:LinkButton>
      </p>
      <p style="margin-left: 40px">
          <asp:LinkButton ID="LinkButton3" runat="server">Have a comment</asp:LinkButton>
      </p>
  <div id="tabs-1">
  </div>
  <div id="tabs-2">
  </div>
  <div id="tabs-3">
  </div>
  <div id="tabs-4">
  </div>
  <div id="tabs-5">
  </div>
  <div id="tabs-6">
    <table width="100%" cellpadding="0" cellspacing="0" style="background-color:#ffffff;">
    <tr>
      <td class="main_line" width="40%">名称</td>
      <td class="main_line" width="10%">价格</td>
      <td class="main_line" width="12%">支付</td>
      <td class="main_line" width="10%">发货</td>
      <td class="main_line" width="20%">日期</td>
      <td class="main_line" width="8%">详情</td>
    </tr>
    <asp:Literal ID="liDiv" runat="server"></asp:Literal>
    </table>
  </div>
</div>
  <div class="bigbr"></div>
  <table cellpadding="0" cellspacing="1" border="0" width="100%">
      <tr>
        <td colspan="3" class="topic">站内消息</td>
      </tr>   
      <asp:Repeater ID="ListMsg" runat="server">
        <HeaderTemplate>
          <tr class="suphead">
              <td width="60%" style="text-align:left; padding-left:5px;">标题</td>              
              <td width="10%">已读</td>
              <td>日期</td>              
          </tr>
        </HeaderTemplate>
        <ItemTemplate>
          <tr class="lines">
            <td style="text-align:left; padding-left:5px;"><div align="left">&nbsp;<a href="Msg_Show.aspx?id=<%# Eval("id") %>" target="_blank"><%# Eval("Title")%></a></div></td>
            <td><%# Convert.ToInt32(Eval("IsRead")) == 0 ? "No" : "Yes"%></td>
            <td><%# Eval("PubDate")%></td>            
          </tr>
         </ItemTemplate>
         </asp:Repeater>       
      
    </table>
</asp:Content>
