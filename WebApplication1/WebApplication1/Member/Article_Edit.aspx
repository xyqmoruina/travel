<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Article_Edit.aspx.cs" Inherits="TotCms.Web.Member.Article_Edit" MasterPageFile="~/Member/Member.Master" ValidateRequest="false" %>
<%@ Register assembly="TotCms.Controls" namespace="TotCms.Controls" tagprefix="cc1" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">    
    <script src="../ckeditor/ckeditor.js" type="text/javascript"></script>
    <div class="main_line">修改文章</div>
    <div class="br"></div>
    
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td width="100">
                选择分类：</td>
            <td>
                <asp:DropDownList ID="CategoryId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                文章标题：</td>
            <td>
                <asp:TextBox ID="Title" runat="server" CssClass="input_big"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Title" ErrorMessage="请填写文章标题"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                文章作者：</td>
            <td>
                <asp:TextBox ID="Author" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                文章来源：</td>
            <td>
                <asp:TextBox ID="SourceFrom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                文章内容：</td>
            <td>
                <textarea name="Content"><%=content%></textarea>
                <!-- This div will hold the editor. -->
	            <div id="editor"></div>
                <script type="text/javascript">
		          //<![CDATA[
			          // Replace the <textarea id="Content"> with an CKEditor instance.
			          var editor = CKEDITOR.replace( 'Content');
		          //]]>
		      </script>
          </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td height="55">
                <asp:Button ID="Button1" runat="server" Text="修改文章" onclick="Button1_Click" 
                  CssClass="new-btn-login" />
            </td>
        </tr>
    </table>
    
</asp:Content>