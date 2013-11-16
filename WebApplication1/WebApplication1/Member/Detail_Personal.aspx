<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail_Personal.aspx.cs" Inherits="TotCms.Web.Member.Detail_Personal" MasterPageFile="~/Member/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <div class="main_line">个人会员信息</div>
    <div class="br"></div>
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td width="30%">
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
        <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td  width="30%">
                姓名：</td>
            <td>
                <asp:Label ID="LbUserName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                身份证号：</td>
            <td>
                <asp:Label ID="LbIdCard" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                出生日期：</td>
            <td>
                <asp:Label ID="LbBornDate" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                性别：</td>
            <td>
                <asp:Label ID="LbSex" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                年龄：</td>
            <td>
                <asp:Label ID="LbAge" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                地区：</td>
            <td>
                <asp:Label ID="LbArea" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                教育程度：</td>
            <td>
                <asp:Label ID="LbEdu" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                专业：</td>
            <td>
                <asp:Label ID="LbProfession" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                收入情况：</td>
            <td>
                <asp:Label ID="LbIncome" runat="server" Text=""></asp:Label>
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
                MSN：</td>
            <td>
                <asp:Label ID="LbMsn" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                个人主页：</td>
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
                个人简介：</td>
            <td>
                <asp:Label ID="LbDemons" runat="server" Text=""></asp:Label>
            </td>
        </tr>        
    </table>
&nbsp;
</asp:Content>
