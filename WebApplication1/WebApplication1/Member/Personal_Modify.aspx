<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal_Modify.aspx.cs" Inherits="TotCms.Web.Member.Personal_Modify" MasterPageFile="~/Member/Member.Master" ValidateRequest="false" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <script type="text/javascript" src="/js/areas.js"></script>
    <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
    <div class="main_line">个人会员信息</div>
    <div class="br"></div>
        <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td  width="100" class="td_input">
                姓名：</td>
            <td>
                <asp:TextBox ID="TbUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                身份证号：</td>
            <td>
                <asp:TextBox ID="TbIdCard" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                出生日期：</td>
            <td>
                <asp:TextBox ID="TbBornDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                性别：</td>
            <td>
                <asp:RadioButtonList ID="RbSex" runat="server" RepeatDirection="Horizontal" 
                    RepeatLayout="Flow">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                年龄：</td>
            <td>
                <asp:TextBox ID="TbAge" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                教育程度：</td>
            <td>
                <asp:TextBox ID="TbEducation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                专业：</td>
            <td>
                <asp:TextBox ID="TbProfession" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                收入情况：</td>
            <td>
                <asp:TextBox ID="TbInCome" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                电话：</td>
            <td>
                <asp:TextBox ID="TbTel" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                手机：</td>
            <td>
                <asp:TextBox ID="TbMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                QQ：</td>
            <td>
                <asp:TextBox ID="TbQQ" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                MSN：</td>
            <td>
                <asp:TextBox ID="TbMSN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                Email：</td>
            <td>
                <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                个人主页：</td>
            <td>
                <asp:TextBox ID="TbHomePage" runat="server"></asp:TextBox>
            </td>
        </tr>
 	    <tr>
          <td class="td_input">地区：</td>
        <td>
         <select name="Province" id="Province" onchange="GetAreaChilds(this.options[this.selectedIndex].value,0,'City')">
            <option value="0">选择城市</option>
            <script type="text/javascript">document.write(GetAreaFirst(<%=province %>,''));</script>
          </select>
          <select name="City" id="City">
            <option value="0">选择地区</option>
          </select>	
          <script type="text/javascript">GetAreaChilds(<%=province %>,<%=city %>,'City');</script>
          </td>
        </tr>
        <tr>
            <td class="td_input">
                地址：</td>
            <td>
                <asp:TextBox ID="TbAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                邮编：</td>
            <td>
                <asp:TextBox ID="TbPostCode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                个人简介：</td>
            <td>
                <asp:TextBox ID="TbDemons" runat="server" CssClass="hidden" 
                    TextMode="MultiLine" ClientIDMode="Static"></asp:TextBox>
                <div id="editor"></div>
                <script type="text/javascript">
		          //<![CDATA[
                  // Replace the <textarea id="Content"> with an CKEditor instance.
                  var editor = CKEDITOR.replace('TbDemons');
		          //]]>
		      </script>
            </td>
        </tr>        
        <tr>
            <td>
                &nbsp;</td>
            <td height="55">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修 改" 
                  CssClass="new-btn-login" />
            </td>
        </tr>        
    </table>
&nbsp;
</asp:Content>

