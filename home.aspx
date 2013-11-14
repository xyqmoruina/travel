<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Culture="zh-CN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style4
        {
            font-family: 微软雅黑;
            font-size: medium;
            color: #FFFFFF;
            z-index: 1;
            left: 923px;
            top: 8px;
            position: absolute;
            right: 327px;
        }
        #form1
        {
            z-index: 1;
            left: 73px;
            top: 104px;
            position: relative;
            height: 814px;
            width: 1350px;
        }
        .btn
        {        

            background-color:#0d7bd5; 
            Border-Color:#0066FF; 
            border-style:Solid;
            font-family:微软雅黑;
            Font-Size:large;
            font-weight:bold;
            color:white;
            z-index: 1; left: 1056px; top: 6px; position: absolute; width: 100px; height: 30px;
        }
        </style>
</head>
<body style="color: #000099">
    <form id="form1" runat="server">
    <div style="height: 49px">
    
        <asp:Image ID="Logo" runat="server" Height="50px" ImageAlign="Left" 
            Width="50px" />
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 102px; top: 199px; position: absolute; height: 100px; width: 362px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            </Columns>
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hi,[<asp:Label ID="username" runat="server" Text="username"></asp:Label>
        ]
        <asp:Button ID="Info" runat="server" Height="30px" 
            Text="个人信息" Width="100px" TabIndex="4" BackColor="#0D7BD5" 
            BorderColor="#0066FF" BorderStyle="Solid" CssClass="style4" />
        <asp:Button ID="wannatra" runat="server" BackColor="#0D7BD5" BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Large" ForeColor="White" OnClick="Button1_Click" style="z-index: 1; left: 1056px; top: 6px; position: absolute; width: 100px; height: 30px; right: 194px;" Text="我要玩" />
        <asp:Button ID="Button2" runat="server" Text="我要评" CssClass="btn" style="z-index: 1; left: 1185px; top: 6px; position: absolute; bottom: 778px;" />
    
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wIIConnectionString %>" SelectCommand="SELECT [name], [description] FROM [router]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click" style="z-index: 1; left: 565px; top: 173px; position: absolute" Text="Go~" />
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 103px; top: 162px; position: absolute; width: 351px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
