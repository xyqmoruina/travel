<%@ Page Language="C#" ContentType="text/html" EnableViewstate="false"%>
<%@ Import Namespace="System.Data" %>
<%@ Import NameSpace="System.Data.OleDb" %>
<%@ Import NameSpace="System.Text.RegularExpressions" %>

<script runat="server">
void mGetRand(){
string strDb=Server.MapPath("db-access/lvyou.mdb");//�����ֵ�λ�ã����Ҫ��ֹ���أ���.mdb��׺���������������޸�
//Response.Write(strDb);
string strAuth="PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=";
OleDbConnection db=new OleDbConnection(strAuth+strDb);
int i=System.DateTime.Now.Minute;
string strSql="SELECT TOP 3 dName,dContent FROM LouHome ORDER BY RND("+i.ToString()+"-did)"; //������3����¼���û��״���ʾ

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
labError.Text="û���ҵ��κ�������ݣ������̹ؼ����ٲ�ѯ��";
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
string strDb=Server.MapPath("db-access/lvyou.mdb");//�����ֵ�λ�ã����Ҫ��ֹ���أ���.mdb��׺���������������޸�
//Response.Write(strDb);
string strAuth="PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=";
OleDbConnection db=new OleDbConnection(strAuth+strDb);

string strKey="";
tbKey.Text=Regex.Replace(tbKey.Text,"[=\\s\"\'0-9!,.����~@#��%����&*(){}`+����<>?/]","",RegexOptions.IgnoreCase);//��ֹSQLע��

strKey=tbKey.Text.ToString().Trim();

/*������Ҫ��ע�͵�һ����ǰ���//��ʾ����Ч*/

/*ȫ�ļ�����Ҫ�Ķ���*/
string strSql="SELECT TOP 100 dName,dContent FROM LouHome WHERE dName LIKE '%"+strKey+"%' OR dKey LIKE '%"+strKey+"%'"; 

/*�����������Ҫ�Ķ���*/
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
labError.Text="û���ҵ��κ���ص��ʣ������������ٲ�ѯ��";
}
catch(Exception ee){
//labError.Text=ee.ToString();
}
}
//��ʽ�����ݵ���ʾ��ʽ
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
<title>¿������---��Ҫ��----����һ��----��¶��Ʒ</title>

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
<img src="images/logo.jpg" alt="¿������" border="0"/><br />
  <asp:Label ID="labError" runat="server"/>
  �ؼ���  ��  <asp:TextBox ID="tbKey" runat="server" Width="160px" AutoPostBack="false"/>
  <font color="gray">�����뾰�㡢λ�õȲ�ѯ�ؼ���</font>
  <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="tbKey" ErrorMessage="*" Display="Dynamic"/>
<asp:Button ID="btn" runat="server" Text="����" OnClick="mSearch"/>
<br style="height:8px"/><br style="height:8px"/>
<div style="background:#75CBFF; color:#666666; width:50%; height:20px; padding-top:4px; float:left; text-align:right">����<asp:Label ID="labCount" runat="server" Text="0" ForeColor="#FF0000"/>����ؽ��&nbsp;&nbsp;</div><br style="height:8px"/><br style="height:8px"/>
<br /><asp:label id="divT" runat="server" Text="ÿ����ѧ" /></br>
<asp:DataList ID="dl" runat="server" Width="98%" OnSelectedIndexChanged="dl_SelectedIndexChanged">
  <itemtemplate>
    <div style="background:#016392; color:#FFFFFF; width:80px;"><i>&middot;��� <%#(Container.ItemIndex+1).ToString()%></i></div>
    <div style="width:99%; border:1px solid #016392;">
      <div style="background:#E2E3D7; font-weight:bold; padding:2px;">
        <asp:Label ID="labName" runat="server" Text=<%#"<font style='font-style:italic; font-weight:normal;'>���㣺</font>"+strTitle2(DataBinder.Eval(Container.DataItem,"dName").ToString()) %> />
      </div>
      <div style=" padding:10px;">
        <asp:Label ID="labContent" runat="server" Text=<%#strTitle2(DataBinder.Eval(Container.DataItem,"dContent").ToString())%> />
        <div style="float:right; width:40%">
          <asp:Label ID="labContent2" Visible="false" runat="server" Text=<%#"����"+strTitle(DataBinder.Eval(Container.DataItem,"dName").ToString())%> />
        </div>
      </div>
    </div>
    <br />
  </itemtemplate>
</asp:DataList>
<div style="background:#E1FAFF; width:97%; text-align:center;">


</form>
    <!--վ��ͳ�ƿ�ʼ�����޸Ļ�ɾ��-->
<div style="display:none"><script src="http://s96.cnzz.com/stat.php?id=1994368&web_id=1994368" language="JavaScript"></script></div>
<!--վ��ͳ�ƽ���-->
</body>
</html>
