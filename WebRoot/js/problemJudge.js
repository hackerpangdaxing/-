var TRUE_COUNT = 0
var obj
var class_radio = "selection"
var str1 = "http://pangdaxing.vicp.io/Cloud/servlet/ProblemJsonServlet?id="
var questionID = 1

var radio_innerHTML = function(obj, class_radio) {
	var class_radio1 = document.getElementsByClassName(class_radio);
	document.getElementById("id").innerHTML = obj.title[0].id
	document.getElementById("title").innerHTML = obj.title[0].problem
	class_radio1[0].nextElementSibling.innerHTML = obj.title[0].choose_1
	class_radio1[1].nextElementSibling.innerHTML = obj.title[0].choose_2
	class_radio1[2].nextElementSibling.innerHTML = obj.title[0].choose_3
	class_radio1[3].nextElementSibling.innerHTML = obj.title[0].choose_4

	questionID++;
}

var loding = function(str1, id, class_radio) {
	if (id <= 5) { //设置总共5题
		var urlorigin = str1 + id
		post(urlorigin, class_radio)
	} else {
		var sores = TRUE_COUNT * 20 //计算最后总分
		var str = "你的最终成绩为："
		$("#login").click(function() {

					$("#result1").text(str + sores)
				})
	}

}

var judge = function(class_radio) {
	var class_radio1 = document.getElementsByClassName(class_radio);
	for (var i = 0; i < class_radio1.length; i++) { //单选项数组
		var a = ["A", "B", "C", "D"]
		if (class_radio1[i].checked && a[i] == obj.title[0].answer) {
			TRUE_COUNT++;
			break;
		}
	}
	loding(str1, questionID, class_radio);
}
var post = function(urlorigin, class_radio) {
	$.ajax({
		type : "get",
		url : urlorigin,

		/*beforeSend:function(){
		    alert("即将提交数据！");
		},*/
		success : function(data) {
			var str = '{"title":' + data + "}"
			obj = eval("(" + str + ")")       //获取后台json数据
			radio_innerHTML(obj, class_radio)

		}
			/*error:function(XMLResponse){
		   alert("出错信息："+XMLResponse.responseTest);
		},
		complete:function(){
		   alert("提交完成");
		}     */
		})
		

}