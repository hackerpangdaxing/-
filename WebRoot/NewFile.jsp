<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
	var socket = null;
	var name = null;
		function parseObj(strData) {//转换对象
	
			return (new Function("return " + strData))();
			
		};
		
		$("#connect").click(function(){
			if($("#connect").html()=='连接'){
				var name = $("#name").val();
				if(''==name){
					alert("请先输入姓名后点击连接");
					return;
				}
				//创建socket对象
				socket = new WebSocket("ws://" + "pangdaxing.vicp.io"+"/Cloud/game");
				socket.onopen = open;
				socket.onmessage = message;
				socket.onclose = close;
				socket.onerror = error;
				//var str =" ${pageContext.request.contextPath}";
				//alert(str);
				//alert(window.location.host)
			}else {
				socket.close();
			}
		});
		
		//连接创建后调用
		function open(){
			name = $("#name").val();
			socket.send("name:"+name);
			$("#showMsg").append("<span style = 'color : green;'>连接成功...</span><br/>");
			$("#connect").html("断开");
			$("#sendText").show();
		};
		
		//接收到服务器消息后调用
		function message(message){
			var data = parseObj(message.data);
			
			if (data.type == "message") {
			//alert(data.type);
				$("#showMsg").append("<span style='display:block'>" + data.text + "</span>");  //消息内容
				//alert(data.name);
			if(data.type ==this.name){
				}else{
				$("#music").html("<audio controls='controls'  hidden='hidden' autoplay='autoplay' ><source src='music/qq1.mp3' type='audio/mpeg' /></audio>");
				
				} 
			//	$("#music").html("<audio controls='controls'  hidden='hidden' autoplay='autoplay' loop='loop'><source src='music/father.mp3' type='audio/mpeg' /></audio>");
			}else if(data.type == "name"){
				$("#showMsg").append("<span style='display:block'>欢迎【" + data.text + "】来到聊天室!</span>");   //登入成功
				//$("#bg_music").append("<embed id='m_bg_music'  loop=true  volume='60' autostart=true hidden=true src=''/Cloud/music/qq.wav' />");
			}else if(data.type =="offline"){
				$("#showMsg").append("<span style='display:block;color:red;';>用户【" + data.name + "】离开了聊天室!</span>");
				$("#online").html(data.online);
				alert(data.name);
			}else{
				//用户连接时，刷新在线人数
				//$("#music").html("<audio controls='controls'  hidden='hidden' autoplay='autoplay' loop='loop'><source src='music/father.mp3' type='audio/mpeg' /></audio>");
				$("#p").show(); 
				$("#online").html(data.online);
			}
		}

		//关闭连接的时候调用
		function close(){
			$("#connect").html("连接");
			$("#p").hide();
			$("#sendText").hide();
			$("#showMsg").html('');
			$("#name").val('')
		}
		
		//出错时调用
		function error(){
			alert("error");
		}
		
		//清空聊天记录
		$("#clear").click(function(){
			$("#showMsg").html('');
		});
	
		//发送消息
		$("#sendButton").click(function() {
			var msg = $("#msg").val();
			if(''==msg){
				alert("啥都没有，发送个毛线");
				return;
			}
			socket.send(msg);
			
			$("#msg").val('');
			
		});
	});
	
	
	
</script>

</head>

<body>
	姓名:  <input type="text" id="name" /> 
	<button id = "connect">连接</button>
	<p style="display: none;" id = "p">在线人数: <span id = "online" style="color: red"></span></p>
	<br>  
	<div id="showMsg"style="border: 1px solid; width: 500px; height: 400px; overflow: auto; margin-top: 30px">
	<div id="music"></div>
	</div>
	<div id = "sendText"  style="display: none;">
		<input type="text" id="msg" /> <input type="button" id="sendButton"value="发送" /> <input type="button" id="clear"value="清空聊天记录" />
	</div>
	<div id= "bg_music"></div>
</body>

</html>