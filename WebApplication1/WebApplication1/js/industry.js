var industry_arr=[['1','旅游 餐饮 娱乐 休闲 购物','0'],['2','机械设备、通用零部件','0'],['3','日常服务','0'],['4','纺织 皮革 服装 鞋帽','0'],['5','家具 生活用品 食品','0'],['6','通信 邮政 计算机 网络 ','0'],['7','医疗保健 社会福利','0'],['8','电子电器 仪器仪表','0'],['9','金融 保险 证券 投资','0'],['10','交通物流 运输设备 ','0'],['11','城建 房产 建材 装潢 ','0'],['12','石油化工 橡胶塑料 ','0'],['13','钟表眼镜 工艺品 礼品','0'],['14','造纸 纸品 印刷 包装 ','0'],['15','新闻 出版 科研 教育 ','0'],['16','农林牧渔 ','0'],['17','广告 会展 商务办公 咨询业 ','0'],['18','冶金冶炼 金属及非金属制品','0'],['19','贸易 批发 市场','0'],['20','党政机关 社会团体 ','0'],['21','浴场','1'],['22','休闲娱乐','1'],['23','旅游、宾馆','1'],['24','餐饮','1'],['25','体育、休闲运动','1'],['26','宠物、花鸟','1'],['27','文化艺术','1'],['28','购物','1'],['29','体育、文娱用品','1'],['30','酒店、厨房设备用品','1'],['31','锅炉','2'],['32','机床','2'],['33','机械机器设备','2'],['34','通用机械设备','2'],['35','专用机械设备','2'],['36','泵业','2'],['37','动力、节能设备','2'],['38','热力工程设备','2'],['39','机电设备','2'],['40','通用零部件业','2'],['41','非标设备及零部件','2'],['42','监督、投诉及热线电话','3'],['43','水、电、煤','3'],['44','日常服务等','3'],['45','美发美容、浴室','3'],['46','商务、清洗服务','3'],['47','家政家教、老年服务','3'],['48','闲置物品调剂回收','3'],['49','纺织印染','4'],['50','皮革、毛皮、羽绒制品','4'],['51','服装','4'],['52','鞋帽','4'],['53','照相、摄像器材','5'],['54','净水及设备','5'],['55','家具 木制品 居家饰品','5'],['56','日用品、日用杂品','5'],['57','日用化工','5'],['58','日用电器','5'],['59','自行车、缝纫机','5'],['60','食品、烟、酒','5'],['61','副食品、粮油','5'],['62','通信','6'],['63','邮政','6'],['64','通讯设备','6'],['65','电子计算机','6'],['66','互联网信息及技术服务','6'],['67','福利','7'],['68','殡葬业','7'],['69','医疗卫生事业','7'],['70','医药','7'],['71','保健品','7'],['72','卫生、医疗及康复器材','7'],['73','电池、充电器','8'],['74','广播、影视、音响设备及器材','8'],['75','防静电、防雷、防爆及弱电工程及设备','8'],['76','衡量器','8'],['77','电器设备','8'],['78','电子设备、材料及器件','8'],['79','电工器材','8'],['80','照明器具','8'],['81','自动化设备','8'],['82','仪器仪表','8'],['83','保险','9'],['84','证券期货','9'],['85','开发区','9'],['86','金融','9'],['87','金融投资','9'],['88','外事服务、国际劳务','9'],['89','商(企)业驻在机构','9'],['90','城市公共交通','10'],['91','交通运输','10'],['92','物流业','10'],['93','交通运输设备','10'],['94','航天航空','10'],['95','城市建设','11'],['96','环境保护','11'],['97','房地产业','11'],['98','建筑、安装、装潢业','11'],['99','建筑材料业','11'],['100','木材','11'],['101','石油、石油化工','12'],['102','能源','12'],['103','化肥农药','12'],['104','火工产品','12'],['105','橡胶、橡塑制品','12'],['106','塑料(塑胶)及其制品','12'],['107','化工原料及产品','12'],['108','涂料、油墨、颜料、染料','12'],['109','林产化工','12'],['110','古董、收藏品','13'],['111','金银珠宝、饰品','13'],['112','气球、贺卡、日历','13'],['113','钟表、眼镜','13'],['114','工艺品','13'],['115','礼品','13'],['116','旗篷、镜框','13'],['117','造纸、纸张','14'],['118','纸品','14'],['119','印刷、制版、装订','14'],['120','印刷用品及器材','14'],['121','包装','14'],['122','新闻出版','15'],['123','广播影视','15'],['124','音像制品、图书销售','15'],['125','科研设计 气象地质 技术监测','15'],['126','高新技术','15'],['127','教育事业','15'],['128','农业及服务','16'],['129','林业及服务','16'],['130','畜牧业及服务','16'],['131','渔业及服务','16'],['132','兽医兽药、饲料','16'],['133','水利','16'],['134','会展','17'],['135','公关礼仪、企业形象设计','17'],['136','文教办公用品','17'],['137','广告','17'],['138','商务服务','17'],['139','咨询和调查','17'],['140','租赁','17'],['141','广告会展材料及用品','17'],['142','商务、办公设备','17'],['143','国土资源管理、矿藏采选','18'],['144','冶金冶炼业','18'],['145','金属制成品','18'],['146','表面处理、标(表)、招牌','18'],['147','工具、模具磨料','18'],['148','非金属矿物制品','18'],['149','市场','19'],['150','贸易','19'],['151','批发业','19'],['152','物资供销','19'],['153','使(领)馆、国际组织、代表处','20'],['154','中国共产党','20'],['155','人大常委会 ','20'],['156','人民政府及其管理机构','20'],['157','政协、民主党派','20'],['158','社会和宗教团体','20'],['159','基层群众自治组织','20'],['160','婚介服务','3']];
function GetIndustryFirst(cid,sepStr){
    var retValue,i,sele;
    for (var i=0;i<industry_arr.length;i++){
        if(industry_arr[i][2]==0){	
            if(parseInt(industry_arr[i][0])==parseInt(cid)){	
	            sele=' selected';
            }else{
	            sele='';
            }
            retValue+='<option value="'+industry_arr[i][0]+'"'+sele+'>'+sepStr+industry_arr[i][1]+'</option>';	
        }	
    }
    return retValue;
}
function GetIndustryChilds(pid,cid,did){
    var retValue,i,sele;
    var childs=document.getElementById(did);
    childs.length=0;
    for (var i=0;i<industry_arr.length;i++){
        if(parseInt(industry_arr[i][2])==parseInt(pid)){
            var ofs=childs.length;
            childs.options[ofs]=new Option(industry_arr[i][1],industry_arr[i][0]);	
            if(parseInt(cid)==parseInt(industry_arr[i][0])){
	            childs.options[ofs].selected=true;
            }
        }
    }
}
