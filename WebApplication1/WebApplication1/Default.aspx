<%@ Page Title="主页" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: 微软雅黑;
            font-size: xx-large;
            color: #FFFFFF;
            width: 1253px;
            margin-left: 80px;
        }
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            color: #FF0000;
        }
        </style>
    
</head>
<body background="5491983_124942032200_2.jpg" >
    <form id="form1" runat="server"  defaultbutton="loginbotton">
    <div class="style1" dir="ltr">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="UserNameBox" runat="server" BorderColor="#2993EF" 
            BorderStyle="Solid" Height="15px" style="font-family: 微软雅黑; font-size: medium; z-index: 1; left: 1220px; top: 26px; position: absolute;" 
            Width="90px"></asp:TextBox>
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:ImageButton ID="reg" 
            runat="server"
            ImageUrl="~/QQ截图20121102162933.png" 
            onclick="ImageButton2_Click"
            style="margin-bottom: 0px; z-index: 1; left: 858px; top: 105px; position: absolute; width: 100px;"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="loginbotton" runat="server" 
            ImageUrl="~/4d9b109a379bd.jpg" onclick="ImageButton1_Click" style="z-index: 1; left:248px; top: 28px; position: absolute; width: 180px; height: 180px" />
        &nbsp;<span class="auto-style1">&nbsp;</span><span class="auto-style2"><strong>&quot;驴友&quot;在旁，畅行四方</strong></span><br />
    </div>
    <div align="center" dir="ltr" 
        
        style="border-style: hidden; border-width: thin; width: 1043px; margin-left: 0px;">
    &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="账号：" style="z-index: 1; left: 1166px; top: 29px; position: absolute; height: 15px; width: 48px"></asp:Label>
&nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="CanLogin" runat="server" 
            style="font-family: 微软雅黑; color: #FFFFFF; z-index: 1; left: 1234px; top: 103px; position: absolute; height: 15px;" BorderColor="Black"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
        <asp:Label ID="Label2" runat="server" Text="密码：" style="z-index: 1; left: 1165px; top: 67px; position: absolute; width: 51px; height: 15px"></asp:Label>
    &nbsp;<asp:TextBox ID="PassWordBox" runat="server" TextMode="Password" Width="90px" 
            BorderColor="#2993EF" BorderStyle="Solid" 
            style="font-family: 微软雅黑; font-size: medium; z-index: 1; left: 1221px; top: 63px; position: absolute; height: 15px;"></asp:TextBox>
&nbsp;<br />
        <br />
&nbsp;&nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
