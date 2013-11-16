<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enterprise_Modify.aspx.cs" Inherits="TotCms.Web.Member.Enterprise_Modify" MasterPageFile="~/Member/Member.Master" ValidateRequest="false"%>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <script type="text/javascript" src="/js/areas.js"></script>
    <script type="text/javascript" src="/js/industry.js"></script>
    <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
    <div class="main_line">企业会员信息</div>
    <div class="br"></div>
        <table cellpadding="0" cellspacing="0"  width="100%">
        <tr>
            <td width="100" class="td_input">
                单位名称：</td>
            <td>
                <asp:TextBox ID="TbUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                单位性质：</td>
            <td>
                <asp:TextBox ID="TbComType" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                创建日期：</td>
            <td>
                <asp:TextBox ID="TbCreateDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                经营范围：</td>
            <td>
                <asp:TextBox ID="TbBusinessScope" runat="server" TextMode="MultiLine" 
                  Width="418px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td class="td_input">所属行业：</td>
        <td>
        <select name="ParentId" id="ParentId" onchange="GetIndustryChilds(this.options[this.selectedIndex].value,0,'IndustryId')">
            <option value="0">一级行业分类</option>
            <script type="text/javascript">document.write(GetIndustryFirst(<%=parentid %>,''));</script>
          </select>
          <select name="IndustryId" id="IndustryId">
            <option value="0">二级行业分类</option>
          </select>
          <script type="text/javascript">GetIndustryChilds(<%=parentid %>,<%=industryid %>,'IndustryId');</script>
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
                联系人：</td>
            <td>
                <asp:TextBox ID="TbContactMan" runat="server"></asp:TextBox>
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
                传真：</td>
            <td>
                <asp:TextBox ID="TbFax" runat="server"></asp:TextBox>
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
                公司网址：</td>
            <td>
                <asp:TextBox ID="TbHomePage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td_input">
                电子邮箱：</td>
            <td>
                <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox>
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
                公司简介：</td>
            <td>
                <asp:TextBox ID="TbDemons" runat="server" TextMode="MultiLine" 
                  CssClass="hidden" ClientIDMode="Static"></asp:TextBox>
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
