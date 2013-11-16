<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="team.aspx.cs" Inherits="WebApplication1.team" MasterPageFile="~/Member.Master" %>
<asp:Content ContentPlaceHolderID="CphRight" ID="main" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wIIConnectionString %>" SelectCommand="select nickname from users,teaminfo where teaminfo.memberid=users.userid;"></asp:SqlDataSource>
        <br />
    
        <asp:Timer ID="Timer1" runat="server">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; position: absolute; top: 271px; left: 549px; width: 157px; height: 31px" Text="您的小队已经建立~" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 人数：<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1">1~3</asp:ListItem>
            <asp:ListItem Value="2">3~5</asp:ListItem>
            <asp:ListItem Value="3">10人以内</asp:ListItem>
        </asp:DropDownList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 天数：<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="一日游">一日游</asp:ListItem>
            <asp:ListItem>三日以内</asp:ListItem>
            <asp:ListItem>5天长假</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; position: absolute; top: 457px; left: 410px" Text="我要组队！" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="z-index: 1; width: 199px; height: 115px; position: absolute; top: 356px; left: 552px">
            <Columns>
                <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</body>
</html>
</asp:Content>