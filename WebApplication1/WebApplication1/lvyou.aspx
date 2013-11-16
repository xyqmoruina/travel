<%@ Page Language="C#" ContentType="text/html" EnableViewstate="false"%>
<%@ Import Namespace="System.Data" %>
<%@ Import NameSpace="System.Data.OleDb" %>
<%@ Import NameSpace="System.Text.RegularExpressions" %>

<script runat="server">
void mGetRand(){
string strDb=Server.MapPath("db-access/lvyou.mdb");//数据字典位置，如果要防止下载，把.mdb后缀改其它后，在这里修改
//Response.Write(strDb);
string strAuth="PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=";
OleDbConnection db=new OleDbConnection(strAuth+strDb);
int i=System.DateTime.Now.Minute;
string strSql="SELECT TOP 3 dName,dContent FROM LouHome ORDER BY RND("+i.ToString()+"-did)"; //随机获得3条记录，用户首次显示

OleDbCommand cmd=new OleDbCommand(strSql,db);
try{
db.Open();
dl.DataSource=cmd.ExecuteReader();
//dg.DataBind();
dl.DataBind();
db.Close();
cmd.Dispose();
db.Dispose();
labCount.Text=dl.Items.Count.ToString();
if(dl.Items.Count==0)
labError.Text="没有找到任何相关数据，请缩短关键字再查询！";
}
catch(Exception ee){
labError.Text=ee.ToString();
}


}
void mSearch(object sender,EventArgs e){
mGetResult();
divT.Visible=false;
}
void mGetResult(){
string strDb=Server.MapPath("db-access/lvyou.mdb");//数据字典位置，如果要防止下载，把.mdb后缀改其它后，在这里修改
//Response.Write(strDb);
string strAuth="PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=";
OleDbConnection db=new OleDbConnection(strAuth+strDb);

string strKey="";
tbKey.Text=Regex.Replace(tbKey.Text,"[=\\s\"\'0-9!,.。，~@#￥%……&*(){}`+《》<>?/]","",RegexOptions.IgnoreCase);//防止SQL注入

strKey=tbKey.Text.ToString().Trim();

/*根据需要，注释掉一个：前面加//表示不生效*/

/*全文检索需要的定义*/
string strSql="SELECT TOP 100 dName,dContent FROM LouHome WHERE dName LIKE '%"+strKey+"%' OR dKey LIKE '%"+strKey+"%'"; 

/*仅标题检索需要的定义*/
//string strSql="SELECT TOP 100 dName,dContent FROM LouHome WHERE dName LIKE '%"+strKey+"%'";

OleDbCommand cmd=new OleDbCommand(strSql,db);
try{
db.Open();
dl.DataSource=cmd.ExecuteReader();
//dg.DataBind();
dl.DataBind();
db.Close();
cmd.Dispose();
db.Dispose();
labCount.Text=dl.Items.Count.ToString();
if(dl.Items.Count==0)
labError.Text="没有找到任何相关单词，请缩短输入再查询！";
}
catch(Exception ee){
//labError.Text=ee.ToString();
}
}
//格式化内容的显示格式
string strTitle2(string strInput){
string strResult=strInput;
string strRex=tbKey.Text.Trim();

if(strRex!="")
strResult=Regex.Replace(strResult,strRex,"<FONT STYLE='background:yellow;color:red'>"+strRex+"</FONT>", RegexOptions.IgnoreCase);

return strResult;
}
string strTitle(string strInput){
string strResult=strInput;
string strRex=tbKey.Text.Trim();
strResult=Regex.Replace(strResult,strRex,"<FONT STYLE='background:lightgreen;color:red'>"+strRex+"</FONT>", RegexOptions.IgnoreCase);

return strResult;
}


void Page_Load(){
if(!Page.IsPostBack){
tbKey.Attributes.Add("onkeydown", "EnterE(this)");
mGetRand();
}
tbKey.Focus();
}

protected void dl_SelectedIndexChanged(object sender, EventArgs e)
{

}
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>驴行天下---我要看----景点一览----白露出品</title>

<style type="text/css">
<!--
HTML{font-size:14px;
}
-->
</style>
<script type="text/javascript">
function EnterE()

{

   if(event.keycode==13)

   {
       event.returnValue=false;
       event.cancel=true;
       document.getElementById("btn").click();
   }

}

</script>

</head>
<body><form runat="server" style="width:90%; margin:0px auto;" DefaultButton="btn">
<img src="images/logo.jpg" alt="驴行天下" border="0"/><br />
  <asp:Label ID="labError" runat="server"/>
  关键字  ：  <asp:TextBox ID="tbKey" runat="server" Width="160px" AutoPostBack="false"/>
  <font color="gray">请输入景点、位置等查询关键字</font>
  <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="tbKey" ErrorMessage="*" Display="Dynamic"/>
<asp:Button ID="btn" runat="server" Text="查找" OnClick="mSearch"/>
<br style="height:8px"/><br style="height:8px"/>
<div style="background:#75CBFF; color:#666666; width:50%; height:20px; padding-top:4px; float:left; text-align:right">共有<asp:Label ID="labCount" runat="server" Text="0" ForeColor="#FF0000"/>个相关结果&nbsp;&nbsp;</div><br style="height:8px"/><br style="height:8px"/>
<br /><asp:label id="divT" runat="server" Text="每日三学" /></br>
<asp:DataList ID="dl" runat="server" Width="98%" OnSelectedIndexChanged="dl_SelectedIndexChanged">
  <itemtemplate>
    <div style="background:#016392; color:#FFFFFF; width:80px;"><i>&middot;结果 <%#(Container.ItemIndex+1).ToString()%></i></div>
    <div style="width:99%; border:1px solid #016392;">
      <div style="background:#E2E3D7; font-weight:bold; padding:2px;">
        <asp:Label ID="labName" runat="server" Text=<%#"<font style='font-style:italic; font-weight:normal;'>景点：</font>"+strTitle2(DataBinder.Eval(Container.DataItem,"dName").ToString()) %> />
      </div>
      <div style=" padding:10px;">
        <asp:Label ID="labContent" runat="server" Text=<%#strTitle2(DataBinder.Eval(Container.DataItem,"dContent").ToString())%> />
        <div style="float:right; width:40%">
          <asp:Label ID="labContent2" Visible="false" runat="server" Text=<%#"——"+strTitle(DataBinder.Eval(Container.DataItem,"dName").ToString())%> />
        </div>
      </div>
    </div>
    <br />
  </itemtemplate>
</asp:DataList>
<div style="background:#E1FAFF; width:97%; text-align:center;">


</form>
    <!--站长统计开始，请修改或删除-->
<div style="display:none"><script src="http://s96.cnzz.com/stat.php?id=1994368&web_id=1994368" language="JavaScript"></script></div>
<!--站长统计结束-->
</body>
</html>
