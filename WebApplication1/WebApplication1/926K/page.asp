<%
'===================================================================
'HomePage:   http://www.bhcode.net
'������������ʹ�á��޸ģ�ϣ���ҵĳ�����Ϊ���Ĺ�����������
'���뱣��������Ϣ
'
'�����ص�
'��������Ҫ�Ƕ����ݷ�ҳ�Ĳ��ֽ����˷�װ����������ʾ������ȫ���û��Զ��壬
'֧��URL���������֧�ֶ�������ѯ��֧�ֶ��ֶ�����
'
'ʹ��˵��
'�������˵��
'PapgeSize      �����ҳÿһҳ�ļ�¼��
'GetRS       ���ؾ�����ҳ��Recordset������ֻ��
'GetConn      �õ����ݿ�����
'GetField       �õ���ѯ�ֶ�
'GetTbName       �õ�����
'GetWhere       �õ�����
'GetOrder       �õ�����

'���򷽷�˵��
'ShowPage      ��ʾ��ҳ������,Ψһ�Ĺ��÷���
'
'===================================================================

'Const Btn_First="<font face=""webdings"">9</font>"  '�����һҳ��ť��ʾ��ʽ
'Const Btn_Prev="<font face=""webdings"">3</font>"  '����ǰһҳ��ť��ʾ��ʽ
'Const Btn_Next="<font face=""webdings"">4</font>"  '������һҳ��ť��ʾ��ʽ
'Const Btn_Last="<font face=""webdings"">:</font>"  '�������һҳ��ť��ʾ��ʽ

Const Btn_First="��ҳ"  '�����һҳ��ť��ʾ��ʽ
Const Btn_Prev="��һҳ"  '����ǰһҳ��ť��ʾ��ʽ
Const Btn_Next="��һҳ"  '������һҳ��ť��ʾ��ʽ
Const Btn_Last="ĩҳ"  '�������һҳ��ť��ʾ��ʽ

Class Cls_PageView
Private XD_PageCount,XD_Conn,XD_Rs,XD_SQL,XD_TbName,XD_Where,XD_Order,XD_Key,XD_PageSize,XD_Field,XD_total,Str_errors,int_curpage,str_URL,int_totalPage,int_totalRecord,XD_sURL,swhere,sorder


'=================================================================
'PageSize ����
'����ÿһҳ�ķ�ҳ��С
'=================================================================
Public Property Let PageSize(int_PageSize)
 If IsNumeric(Int_Pagesize) Then
  XD_PageSize=CLng(int_PageSize)
 Else
  str_error=str_error & "PageSize�Ĳ�������ȷ"
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
'GetRS ����
'���ط�ҳ��ļ�¼��
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
 
 XD_total = XD_Conn.ExeCute ("select count("& XD_Key &") from "& XD_TbName &swhere)(0)'�ܼ�¼��
 XD_PageCount = abs(int(-abs(XD_total/PageSize)))'��ҳ��
 If Int_curpage>XD_PageCount Then Int_curpage=XD_PageCount
 XD_SQL = "select "&XD_Field&" from "&XD_TbName&swhere&sorder
 XD_Rs.Open XD_SQL,XD_Conn,1,1
 XD_Rs.absoluteposition=XD_Rs.absoluteposition+((abs(int_curpage)-1)*PageSize)
 Set GetRs=XD_Rs
End Property

'================================================================
'GetConn  �õ����ݿ�����
'
'================================================================ 
Public Property Let GetConn(obj_Conn)
 Set XD_Conn=obj_Conn
End Property

'================================================================
'GetTbName   �õ�����
'
'================================================================
Public Property Let GetTbName(str_TbName)
 XD_TbName=str_TbName
End Property
'================================================================
'GetField   �õ�����
'
'================================================================
Public Property Let GetField(str_Field)
 XD_Field=str_Field
End Property

'================================================================
'GetWhere   �õ�����
'
'================================================================
Public Property Let GetWhere(str_Where)
 XD_Where=str_Where
End Property
'================================================================
'GetKey   �õ�����
'
'================================================================
Public Property Let GetKey(str_Key)
 XD_Key=str_Key
End Property

'================================================================
'GetOrder   �õ�����
'
'================================================================
Public Property Let GetOrder(str_Order)
 XD_Order=str_Order
End Property

'==================================================================
'Class_Initialize ��ĳ�ʼ��
'��ʼ����ǰҳ��ֵ
'
'================================================================== 
Private Sub Class_Initialize
 '========================
 '�趨һЩ�������a��ֵ
 '========================
 XD_PageSize=10  '�趨��ҳ��Ĭ��ֵΪ10
 '========================
 '��ȡ��ǰ���ֵ
 '========================
 If Trim(Request("Page"))="" or Not(IsNumeric(Trim(Request("Page")))) Then
  int_curpage=1
 Else
  Int_curpage=CInt(Trim(Request("Page")))
 End If
 If Int_curpage<1 Then Int_curpage=1
End Sub

'====================================================================
'ShowPage  ������ҳ������
'����ҳ��ǰһҳ����һҳ��ĩҳ���������ֵ���
'
'====================================================================
Function ShowPage()
 Dim str_tmp
 XD_sURL = GetUrl()
 int_totalRecord=XD_total
 int_TotalPage=XD_PageCount
 If int_totalRecord<=0 Then
  str_error=str_error & "�ܼ�¼��Ϊ�㣬����������"
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
 '��ʾ��ҳ��Ϣ������ģ������Լ�Ҫ���������λ��
 '==================================================================
 'str_tmp=ShowFirstPrv '��ʾ��ҳ��ǰһҳ
 'response.write str_tmp
 'str_tmp=ShowNextLast'��һҳ��ĩҳ
 'response.write str_tmp
 'str_tmp=ShowPageInfo
 'response.write str_tmp
 'str_tmp=GetPageEnd
 'response.write str_tmp
 ShowPage=ShowFirstPrv&ShowNextLast&ShowPageInfo&GetPageEnd
End Function

'====================================================================
'ShowFirstPrv  ��ʾ��ҳ��ǰһҳ
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
'ShowNextLast  ��һҳ��ĩҳ
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
'ShowPageInfo  ��ҳ��Ϣ
'����Ҫ�������޸�
'
'====================================================================
Private Function ShowPageInfo()
 Dim str_tmp
 str_tmp="ҳ��:"&int_curpage&"/"&int_totalpage&"ҳ ��"&int_totalrecord&"����¼ "&XD_PageSize&"��/ÿҳ"
 ShowPageInfo=str_tmp
End Function

'==================================================================
'GetPageEnd  ������ת
'����Ҫ�������޸�
'
'==================================================================
Public Function GetPageEnd()
	Dim str_tmp
	str_tmp = " <input name=""thepage"" type=""text"" id=""thepage"" value="""& int_curpage &""" size=""3"">" & vbCrLf
	str_tmp = str_tmp & "<a href=""javascript:gourl();"">ת��</a>" & vbCrLf
	str_tmp = str_tmp & chr(13) & "<" & "script language=JavaScript>"
	str_tmp = str_tmp & chr(13) & "function gourl(){"
	str_tmp = str_tmp & chr(13) & "document.location=""" & XD_sURL &"""+document.all.thepage.value+"""";"
	str_tmp = str_tmp & chr(13) & "}"
	str_tmp = str_tmp & chr(13) & "<" & "/script>"
	GetPageEnd=str_tmp
End Function

'==================================================================
'GetURL  �õ���ǰ��URL
'����URL������ͬ����ȡ��ͬ�Ľ��
'
'==================================================================
Private Function GetURL()
 Dim strurl,str_url,i,j,search_str,result_url
 search_str="page="
 
 strurl=Request.ServerVariables("URL")
 Strurl=split(strurl,"/")
 i=UBound(strurl,1)
 str_url=strurl(i)'�õ���ǰҳ�ļ���
 
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
' ���� Terminate �¼���
'
'====================================================================
Private Sub Class_Terminate  
 XD_RS.close
 Set XD_RS=nothing
End Sub
'====================================================================
'ShowError  ������ʾ
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