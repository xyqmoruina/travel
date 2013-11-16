<!--#include file="conn.asp"-->
<!--#include file="page.asp"-->
<%
title=Request.form("title")
'Response.Write title
Set mm=new Cls_PageView
With mm
	'设置每一页的记录条数据为30条
	.PageSize=40
	'得到数据库连接
	.GetConn=Conn
	.GetTbName="jingdian"
	.GetField="id,title"
	.GetWhere="title like '%"&title&"%'"
	.GetKey="id"
	.GetOrder="id"
End With
'返回Recordset
Set Rs=mm.GetRs()

i = 0

iCols = 5
iColsPercent = FormatPercent(1 / iCols, 0)
%>
<form method="POST" action="search.asp">
请输入您要查询的景点：<input type="text" name="title" size="22" value="<%=title%>">
<input type="submit" value="查询" name="B1"></form>


<p>　</p>


<table border="1" width="654" id="table1" cellpadding="5" style="border-collapse: collapse;vertical-align:middle;"><tr>
<%
Do While (i<=mm.PageSize-1) and not rs.eof

   If i > 0 And i Mod iCols = 0 Then Response.Write "</tr><tr>"
   i = i + 1
%>
		<td><a target="_blank" href="north.asp?id=<%=Rs("id")%>"><%=Rs("title")%></a></td>
<%
   Rs.MoveNext
Loop

Do While i < iPageSize
   If i Mod iCols = 0 Then
       Response.Write "</tr><tr>" 
   End If
   i = i + 1
   Response.Write "<td></td>"
Loop
Rs.close
set Rs=nothing
Response.Write "</tr>"
Response.Write "</table>"
Response.Write mm.ShowPage()
%>