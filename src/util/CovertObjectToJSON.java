package util;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;

/**
 * 工具类，将一个对象转换为json格式
 * @author xrd
 *
 */
public class CovertObjectToJSON {
	/**
	 * 将对象转换成json字符串
	 * @param obj
	 * @return
	 * @throws IOException
	 */
	public static String covertToJson(Object obj) throws IOException {
		
		JsonGenerator jg = null;//json生成器
		// 必须要有一个匹配模式
		Writer out = new StringWriter() ;
		ObjectMapper mapper = new ObjectMapper() ;
		
		try {
			// 通过json工厂生产json生产器
			jg = mapper.getJsonFactory().createJsonGenerator(out) ;
			// 将一个对象写入字符流中
			jg.writeObject(obj) ;
			return out.toString() ;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(jg != null) {
				jg.close() ;
			}
		}
		return null ;
	}
}
