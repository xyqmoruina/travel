<!--
	var enabled = 0; today = new Date();
	var day; var date;
	if(today.getDay()==0) day = "星期日"
	if(today.getDay()==1) day = "星期一"
	if(today.getDay()==2) day = "星期二"
	if(today.getDay()==3) day = "星期三"
	if(today.getDay()==4) day = "星期四"
	if(today.getDay()==5) day = "星期五"
	if(today.getDay()==6) day = "星期六"
	document.fgColor = "ff0000";
	date =(today.getYear()>"99"?+today.getYear():"19"+today.getYear()) + "年" + (today.getMonth() + 1 
	) + "月" + today.getDate() +" "+ day +"";
	document.write("<FONT COLOR=003C7D class=p1>")
	document.write(date);
	document.write("</FONT>")
// -->