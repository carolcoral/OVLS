package cn.xdl.ovls.video.interceptor;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.netflix.discovery.converters.Auto;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.video.remote.UserServiceRemote;

@Component
public class CheckInterceptor implements HandlerInterceptor{
	
//	@Autowired
//	private RestTemplateBuilder restTemplateBuilder;
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private UserServiceRemote userService;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//获取令牌token
		String token = request.getParameter("token");
		String userId = request.getParameter("userId");
		if(token != null&&userId != null){
			//TODO 调用/user/token服务�?测令牌正确�??
			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			params.add("userId", userId);
			params.add("token", token);
//			OvlsResult result = restTemplateBuilder.build().postForObject(
//				"http://localhost:8001/user/token", params, OvlsResult.class);
//			OvlsResult result = restTemplate.postForObject(
//					"http://USER-SERVICE/user/token", params, OvlsResult.class);
			OvlsResult result = userService.checkToken(userId, token);
			if(result.getStatus()==1){
				return true;
			}
		}
		//返回未授权提示信�?
		OvlsResult result  = new OvlsResult();
		result.setStatus(-1);
		result.setMsg("δ��Ȩ�û�");
		ObjectMapper mapper = new ObjectMapper();
		String str = mapper.writeValueAsString(result);
		response.setContentType("text/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(str);
		out.flush();
		return false;
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
