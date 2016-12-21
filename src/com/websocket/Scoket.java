package com.websocket;

import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import javax.websocket.CloseReason;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

/**
 * @author 胖大星
 *简单的群聊广播
 */
@ServerEndpoint(value = "/game")      //这个方法类似servlet在web.xml中的配置，用于前后端通信，所以不要再在web.xml中再配置 会报错
public class Scoket {
	//Logger是一个日志类，通过getLogger方法创建一个  this.getClass().getName() 也就是标识当前类的looger对象，来记录当前类可能发生的异常
	private Logger logger = Logger.getLogger(this.getClass().getName());
	static Map<String, Session> sessionMap = new Hashtable<String, Session>();
	static Map<Session, String> nameMap = new Hashtable<Session, String>();   //将用户名和session对象绑定
	@OnOpen
	public void onOpen(Session session) {
		sessionMap.put(session.getId(), session);
		Set<Map.Entry<String, Session>> set = sessionMap.entrySet();
		for (Map.Entry<String, Session> i : set) {
			try {
				i.getValue().getBasicRemote().sendText("{type:'online',online:'"+sessionMap.size()+"'}");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@OnMessage
	public void onMessage(String unscrambledWord, Session session) {
		broadcastAll("message", unscrambledWord,session);
		//System.out.println(unscrambledWord+session);
	}

	/**
	 * 广播给所有人
	 * 
	 * @param message
	 */
	public static void broadcastAll(String type, String message,Session session) {
		Set<Map.Entry<String, Session>> set = sessionMap.entrySet();
		if(message.contains("name")){
			String[] msg = message.split(":");
			nameMap.put(session,msg[1]);
			for (Map.Entry<String, Session> i : set) {
				try {
					i.getValue().getBasicRemote().sendText("{type:'name',text:'"+nameMap.get(session)+"'}");
					//System.out.println("i:"+i);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}else{
			for (Map.Entry<String, Session> i : set) {
				try {
					i.getValue().getBasicRemote().sendText("{type:'" + type+ "',name:'"+  nameMap.get(session)+ "',say:'"+"&nbsp;&nbsp;&nbsp;Say："+ "',text:'" +"  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+message + "<br>"+"'}");
				//	System.out.println("i:"+type+nameMap.get(session)+message);  // 打印出用户名以及消息信息  i:message  tert  rtertert
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	@OnClose
	public void onClose(Session session, CloseReason closeReason) {
		sessionMap.remove(session.getId());
		Set<Map.Entry<String, Session>> set = sessionMap.entrySet();
		for (Map.Entry<String, Session> i : set) {
			try {
				i.getValue().getBasicRemote().sendText("{type:'offline',online:'"+sessionMap.size()+"',name:'"+nameMap.get(session)+"'}");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		nameMap.remove(session);
		//打印出来的信息详细，可以配置，而且可以保存到日志文件。
		logger.info(String.format("Session %s closed because of %s",session.getId(), closeReason));
	}

	@OnError
	public void error(Session session, java.lang.Throwable throwable) {
		sessionMap.remove(session.getId());
		Set<Map.Entry<String, Session>> set = sessionMap.entrySet();
		for (Map.Entry<String, Session> i : set) {
			try {
				i.getValue().getBasicRemote().sendText("{type:'online',online:'"+sessionMap.size()+"'}");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
