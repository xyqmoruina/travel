<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpPhoto.aspx.cs" Inherits="TotCms.Web.Member.UpPhoto" MasterPageFile="~/Member/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <div class="main_line">上传头像</div>
    <div class="br"></div>
    <div align="center">
        当前头像<br />
        <img src="<%=photo %>" style="height: 116px; width: 140px" />
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="上传头像" 
          CssClass="new-btn-login" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
      </div>
</asp:Content>