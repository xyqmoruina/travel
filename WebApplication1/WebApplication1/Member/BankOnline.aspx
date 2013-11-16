<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.Master" AutoEventWireup="true" CodeBehind="BankOnline.aspx.cs" Inherits="TotCms.Web.Member.BankOnline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphRight" runat="server">
<script type="text/javascript">
  function isNumber(val) {
    var reg = /^\d*\.?\d{0,2}$/;
    return reg.test(val);
  }
  function checkNum(obj) {
    var ret = isNumber(obj.value);
    if (!ret) {
      alert('只能输入数字');
      obj.focus();
      obj.select();
    }
  }
   function OpenPayWindow() {
    var money = document.getElementById('tbMoney').value;
    var userid = document.getElementById('tbUserId').value;
    var urls = '/PayApi/Alipay/index.aspx?total_fee=' + money + '&userid=' + userid;
    window.open(urls, 'pay_bank', '', '')
  }
</script>
<table style="width: 100%;" class="brd">
        <tr>
            <td align="center" bgcolor="#f5f5f5" colspan="2" height="32">&nbsp;
                <strong>在线充值</strong></td>
        </tr>
        <tr>
            <td align="center">
                充值金额：</td>
            <td align="left" height="42">
                <input name="tbMoney" type="text" value="0.00" id="tbMoney" onblur="checkNum(this)" />                
                </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="left" height="42">
                <asp:TextBox ID="tbUserId" runat="server" ClientIDMode="Static" CssClass="hidden"></asp:TextBox>
                <input type="button" name="submit" class="new-btn-login"  value="确定" onclick="OpenPayWindow()" />
                </td>
        </tr>
        </table>
</asp:Content>
