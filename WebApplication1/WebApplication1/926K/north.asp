<!--#include file="conn.asp"-->
<%
id=Request.QueryString("id")
set rs=server.CreateObject("ADODB.RecordSet")
rs.Source="select * from jingdian where id="&id&" "
rs.Open rs.Source,Conn,1,1
title=rs("title")
content=rs("content")
rs.close
set rs=nothing

%>
<form method="POST" action="search.asp">
请输入您要查询的景点：<input type="text" name="title" size="22">
<input type="submit" value="查询" name="B1"></form>

<p>　</p>

<table border="1" width="538" id="table1" cellpadding="5" style="border-collapse:collapse;">
	<tr>
		<td width="61" align="center">景点</td>
		<td><%=title%></td>
	</tr>
	<tr>
		<td width="61" align="center">介绍</td>
		<td><%=content%></td>
	</tr>
	</table>
<p>　</p>

