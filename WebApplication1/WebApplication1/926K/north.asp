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
��������Ҫ��ѯ�ľ��㣺<input type="text" name="title" size="22">
<input type="submit" value="��ѯ" name="B1"></form>

<p>��</p>

<table border="1" width="538" id="table1" cellpadding="5" style="border-collapse:collapse;">
	<tr>
		<td width="61" align="center">����</td>
		<td><%=title%></td>
	</tr>
	<tr>
		<td width="61" align="center">����</td>
		<td><%=content%></td>
	</tr>
	</table>
<p>��</p>

