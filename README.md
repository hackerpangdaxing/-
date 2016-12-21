# CloudClass--智能云课堂
javaweb，前后台分离式开发；处女作还望各位大神指教！
一、	系统环境配置
开发环境及工具：jdk7+tomcat7+ MyEclipse2015CI +mysql+Appcan（H5开发工具）
使用技术：JAVAWeb+H5 (前后台完全分离式开发)
Jdk ： 必须是 jdk7以上版本
Tomcat : 必须是使用tomcat7  (涉及到websocket)
数据库： MySql5.0
所需jar包：
			 

注：由于本项目涉及使用jacob.jar将office文件转成pdf格式上传，所需配置如下环境：
    1、把jacob-1.17-M2-x86.dll文件放在%JAVA_HOME%\bin下（注意系统是32位还是64位），也可以放在C:\Windows\System32下，如果是64位应该放在C:\Windows\SysWOW64 下。建议放在jdk的bin目录下
    2、如果是在eclipse下开发，需要重新引入jdk（Preference/Java/Installed JREs）
3、开发时将jacab.jar包放在项目lib下并add到liabraries中即可。
本项目通过tomcat服务器部署在花生壳上，通过端口映射到外网，所以项目里涉及到的所有URL都是 http://pangdaxing.vicp.io 等价于http://localhost:8080； 
 
二、项目详情：
 
注：webRoot下的html以及jsp只是测试，真正的前端都在Appcan中实现
