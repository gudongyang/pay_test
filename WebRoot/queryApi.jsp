<%

%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pay.config.*"%>
<%@ page import="com.pay.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>易生支付支付接口</title>
	</head>
	<%
		////////////////////////////////////请求参数//////////////////////////////////////
 
		// order_id
		String order_id = new String(request.getParameter("order_id").getBytes("ISO-8859-1"),"UTF-8");
  
		// merchant_id
		String  merchant_id = new String(request.getParameter("merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		//Used as identification of an Alipay user.
 
		
		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("input_charset", "UTF-8");
        sParaTemp.put("version", "2.1");
 		sParaTemp.put("partner",PayConfig.partner);
		sParaTemp.put("service", "query");
		sParaTemp.put("sign_type",PayConfig.sign_type);
 
 		sParaTemp.put("order_id", order_id);
 
		sParaTemp.put("merchant_id", merchant_id);
 
		
		//建立请求
		String sHtmlText = PaySubmit.buildRequest("", "", sParaTemp);
		System.out.println(sHtmlText);
		out.println(PayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
