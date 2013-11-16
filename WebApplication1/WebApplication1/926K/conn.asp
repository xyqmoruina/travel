<%
'连接数据库
dim db,conn,rs
db = "provider=microsoft.jet.oledb.4.0;data source=" & server.mappath("data.mdb")
set conn = server.createobject("adodb.connection")
set rs = server.createobject("adodb.recordset")
conn.open db
%>