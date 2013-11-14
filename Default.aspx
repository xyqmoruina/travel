<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 324px;
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
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hi,<asp:Button ID="Button1" runat="server" style="z-index: 1; left: 432px; top: 11px; position: absolute" Text="我要评" CssClass="btn" />
    <p>
        <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" style="z-index: 1; left: 596px; top: 84px; position: absolute; height: 30px; width: 100px" Text="Go~" />
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wIIConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [name], [description] FROM [router]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" Width="442px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 270px; top: 90px; position: absolute; width: 300px"></asp:TextBox>
    </form>
    </body>
</html>
