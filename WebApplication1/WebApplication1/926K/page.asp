<%
'===================================================================
'HomePage:   http://www.bhcode.net
'本程序可以免费使用、修改，希望我的程序能为您的工作带来方便
'但请保留以上信息
'
'程序特点
'本程序主要是对数据分页的部分进行了封装，而数据显示部份完全由用户自定义，
'支持URL多个参数，支持多表关联查询，支持多字段排序
'
'使用说明
'程序参数说明
'PapgeSize      定义分页每一页的记录数
'GetRS       返回经过分页的Recordset此属性只读
'GetConn      得到数据库连接
'GetField       得到查询字段
'GetTbName       得到表名
'GetWhere       得到条件
'GetOrder       得到排序

'程序方法说明
'ShowPage      显示分页导航条,唯一的公用方法
'
'===================================================================

'Const Btn_First="<font face=""webdings"">9</font>"  '定义第一页按钮显示样式
'Const Btn_Prev="<font face=""webdings"">3</font>"  '定义前一页按钮显示样式
'Const Btn_Next="<font face=""webdings"">4</font>"  '定义下一页按钮显示样式
'Const Btn_Last="<font face=""webdings"">:</font>"  '定义最后一页按钮显示样式

Const Btn_First="首页"  '定义第一页按钮显示样式
Const Btn_Prev="上一页"  '定义前一页按钮显示样式
Const Btn_Next="下一页"  '定义下一页按钮显示样式
Const Btn_Last="末页"  '定义最后一页按钮显示样式

Class Cls_PageView
Private XD_PageCount,XD_Conn,XD_Rs,XD_SQL,XD_TbName,XD_Where,XD_Order,XD_Key,XD_PageSize,XD_Field,XD_total,Str_errors,int_curpage,str_URL,int_totalPage,int_totalRecord,XD_sURL,swhere,sorder


'=================================================================
'PageSize 属性
'设置每一页的分页大小
'=================================================================
Public Property Let PageSize(int_PageSize)
 If IsNumeric(Int_Pagesize) Then
  XD_PageSize=CLng(int_PageSize)
 Else
  str_error=str_error & "PageSize的参数不正确"
  ShowError()
 End If
End Property
Public Property Get PageSize
 If XD_PageSize="" or (not(IsNumeric(XD_PageSize))) Then
  PageSize=10     
 Else
  PageSize=XD_PageSize
 End If
End Property

'=================================================================
'GetRS 属性
'返回分页后的记录集
'=================================================================
Public Property Get GetRs()
 Set XD_Rs=Server.createobject("adodb.recordset")
 XD_Rs.PageSize=PageSize
 If XD_Where = "" Then
 	swhere = ""
 Else
 	swhere = " where "&XD_Where
 End If
 If XD_Order = "" Then
 	sorder = " order by "&XD_Key&" desc"
 Else
 	sorder = " order by "&XD_Order
 End If
 
 XD_total = XD_Conn.ExeCute ("select count("& XD_Key &") from "& XD_TbName &swhere)(0)'总记录数
 XD_PageCount = abs(int(-abs(XD_total/PageSize)))'总页数
 If Int_curpage>XD_PageCount Then Int_curpage=XD_PageCount
 XD_SQL = "select "&XD_Field&" from "&XD_TbName&swhere&sorder
 XD_Rs.Open XD_SQL,XD_Conn,1,1
 XD_Rs.absoluteposition=XD_Rs.absoluteposition+((abs(int_curpage)-1)*PageSize)
 Set GetRs=XD_Rs
End Property

'================================================================
'GetConn  得到数据库连接
'
'================================================================ 
Public Property Let GetConn(obj_Conn)
 Set XD_Conn=obj_Conn
End Property

'================================================================
'GetTbName   得到表名
'
'================================================================
Public Property Let GetTbName(str_TbName)
 XD_TbName=str_TbName
End Property
'================================================================
'GetField   得到表名
'
'================================================================
Public Property Let GetField(str_Field)
 XD_Field=str_Field
End Property

'================================================================
'GetWhere   得到条件
'
'================================================================
Public Property Let GetWhere(str_Where)
 XD_Where=str_Where
End Property
'================================================================
'GetKey   得到主键
'
'================================================================
Public Property Let GetKey(str_Key)
 XD_Key=str_Key
End Property

'================================================================
'GetOrder   得到排序
'
'================================================================
Public Property Let GetOrder(str_Order)
 XD_Order=str_Order
End Property

'==================================================================
'Class_Initialize 类的初始化
'初始化当前页的值
'
'================================================================== 
Private Sub Class_Initialize
 '========================
 '设定一些参数的黙认值
 '========================
 XD_PageSize=10  '设定分页的默认值为10
 '========================
 '获取当前面的值
 '========================
 If Trim(Request("Page"))="" or Not(IsNumeric(Trim(Request("Page")))) Then
  int_curpage=1
 Else
  Int_curpage=CInt(Trim(Request("Page")))
 End If
 If Int_curpage<1 Then Int_curpage=1
End Sub

'====================================================================
'ShowPage  创建分页导航条
'有首页、前一页、下一页、末页、还有数字导航
'
'====================================================================
Function ShowPage()
 Dim str_tmp
 XD_sURL = GetUrl()
 int_totalRecord=XD_total
 int_TotalPage=XD_PageCount
 If int_totalRecord<=0 Then
  str_error=str_error & "总记录数为零，请输入数据"
  Call ShowError()
 End If
 If int_totalRecord="" then
     int_TotalPage=1
 Else
  If int_totalRecord mod PageSize =0 Then
   int_TotalPage = CLng(int_TotalRecord / XD_PageSize * -1)*-1
  Else
   int_TotalPage = CLng(int_TotalRecord / XD_PageSize * -1)*-1+1
  End If
 End If
 
 If Int_curpage>int_Totalpage Then
  int_curpage=int_TotalPage
 End If
 '==================================================================
 '显示分页信息，各个模块根据自己要求更改显求位置
 '==================================================================
 'str_tmp=ShowFirstPrv '显示首页、前一页
 'response.write str_tmp
 'str_tmp=ShowNextLast'下一页、末页
 'response.write str_tmp
 'str_tmp=ShowPageInfo
 'response.write str_tmp
 'str_tmp=GetPageEnd
 'response.write str_tmp
 ShowPage=ShowFirstPrv&ShowNextLast&ShowPageInfo&GetPageEnd
End Function

'====================================================================
'ShowFirstPrv  显示首页、前一页
'
'
'====================================================================
Private Function ShowFirstPrv()
 Dim Str_tmp,int_prvpage
 If Int_curpage=0 or Int_curpage=1 Then
  str_tmp=Btn_First&" "&Btn_Prev
 Else
  int_prvpage=Int_curpage-1
  str_tmp="<a href="""&XD_sURL & "1" & """>" & Btn_First&"</a> <a href=""" & XD_sURL & CStr(int_prvpage) & """>" & Btn_Prev&"</a>"
 End If
 ShowFirstPrv=str_tmp&"&nbsp;"
End Function

'====================================================================
'ShowNextLast  下一页、末页
'
'
'====================================================================
Private Function ShowNextLast()
 Dim str_tmp,int_Nextpage
 If Int_curpage>=int_totalpage Then
  str_tmp=Btn_Next & " " & Btn_Last
 Else
  Int_NextPage=int_curpage+1
  str_tmp="<a href=""" & XD_sURL & CStr(int_nextpage) & """>" & Btn_Next&"</a> <a href="""& XD_sURL & CStr(int_totalpage) & """>" &  Btn_Last&"</a>"
 End If
 ShowNextLast=str_tmp&"&nbsp;"
End Function


'====================================================================
'ShowPageInfo  分页信息
'更据要求自行修改
'
'====================================================================
Private Function ShowPageInfo()
 Dim str_tmp
 str_tmp="页次:"&int_curpage&"/"&int_totalpage&"页 共"&int_totalrecord&"条记录 "&XD_PageSize&"条/每页"
 ShowPageInfo=str_tmp
End Function

'==================================================================
'GetPageEnd  下拉跳转
'根据要求自行修改
'
'==================================================================
Public Function GetPageEnd()
	Dim str_tmp
	str_tmp = " <input name=""thepage"" type=""text"" id=""thepage"" value="""& int_curpage &""" size=""3"">" & vbCrLf
	str_tmp = str_tmp & "<a href=""javascript:gourl();"">转向</a>" & vbCrLf
	str_tmp = str_tmp & chr(13) & "<" & "script language=JavaScript>"
	str_tmp = str_tmp & chr(13) & "function gourl(){"
	str_tmp = str_tmp & chr(13) & "document.location=""" & XD_sURL &"""+document.all.thepage.value+"""";"
	str_tmp = str_tmp & chr(13) & "}"
	str_tmp = str_tmp & chr(13) & "<" & "/script>"
	GetPageEnd=str_tmp
End Function

'==================================================================
'GetURL  得到当前的URL
'更据URL参数不同，获取不同的结果
'
'==================================================================
Private Function GetURL()
 Dim strurl,str_url,i,j,search_str,result_url
 search_str="page="
 
 strurl=Request.ServerVariables("URL")
 Strurl=split(strurl,"/")
 i=UBound(strurl,1)
 str_url=strurl(i)'得到当前页文件名
 
 str_params=Trim(Request.ServerVariables("QUERY_STRING"))
 If str_params="" Then
  result_url=str_url & "?page="
 Else
  If InstrRev(str_params,search_str)=0 Then
   result_url=str_url & "?" & str_params &"&page="
  Else
   j=InstrRev(str_params,search_str)-2
   If j=-1 Then
    result_url=str_url & "?page="
   Else
    str_params=Left(str_params,j)
    result_url=str_url & "?" & str_params &"&page="
   End If
  End If
 End If
 GetURL=result_url
End Function

'====================================================================
' 设置 Terminate 事件。
'
'====================================================================
Private Sub Class_Terminate  
 XD_RS.close
 Set XD_RS=nothing
End Sub
'====================================================================
'ShowError  错误提示
'
'
'====================================================================
Private Sub ShowError()
 If str_Error <> "" Then
  Response.Write("" & str_Error & "")
  Response.End
 End If
End Sub
End class
%>