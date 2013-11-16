<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail_Enterprise.aspx.cs" Inherits="TotCms.Web.Member.Detail_Enterprise" MasterPageFile="~/Member/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <div class="main_line">企业会员信息</div>
    <div class="br"></div>
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td width="180">
                会员ID：</td>
            <td>
                <asp:Label ID="LbUserId" runat="server" Text=""></asp:Label>
                                </td>
        </tr>
        <tr>
            <td>
                邮箱：</td>
            <td>
                <asp:Label ID="LbEmail" runat="server" Text=""></asp:Label>
                                </td>
        </tr>
        <tr>
            <td>
                注册IP：</td>
            <td>
                <asp:Label ID="LbRegIp" runat="server" Text=""></asp:Label>
                                </td>
        </tr>
        <tr>
            <td>
                注册日期：</td>
            <td>
                <asp:Label ID="LbRegDate" runat="server" Text=""></asp:Label>
                                </td>
        </tr>
        <tr>
            <td>
                上次登录IP：</td>
            <td>
                <asp:Label ID="LbLastLoginIp" runat="server" Text=""></asp:Label>
                                </td>
        </tr>
        <tr>
            <td>
                上次登录日期：</td>
            <td>
                <asp:Label ID="LbLastLoginDate" runat="server" Text=""></asp:Label>
                                </td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0"  width="100%">
        <tr>
            <td width="180">
                单位名称：</td>
            <td>
                <asp:Label ID="LbUserName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                单位性质：</td>
            <td>
                <asp:Label ID="LbComType" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                创建日期：</td>
            <td>
                <asp:Label ID="LbCreateDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                联系人：</td>
            <td>
                <asp:Label ID="LbContactMan" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                经营范围：</td>
            <td>
                <asp:Label ID="LbBusinessScope" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                电话：</td>
            <td>
                <asp:Label ID="LbTel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                传真：</td>
            <td>
                <asp:Label ID="LbFax" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                手机：</td>
            <td>
                <asp:Label ID="LbMobile" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                QQ：</td>
            <td>
                <asp:Label ID="LbQq" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                公司主页：</td>
            <td>
                <asp:Label ID="LbHomePage" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                地址：</td>
            <td>
                <asp:Label ID="LbAddress" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                邮编：</td>
            <td>
                <asp:Label ID="LbPostCode" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                头像：</td>
            <td>
                <img src="<%=photo %>" width="120" height="120" />
            </td>
        </tr>
        <tr>
            <td>
                公司简介：</td>
            <td>
                <asp:Label ID="LbDemons" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        </table>
&nbsp;
</asp:Content>
