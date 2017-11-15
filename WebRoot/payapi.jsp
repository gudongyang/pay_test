
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

		//amount
		String amount = new String(request.getParameter("amount").getBytes("ISO-8859-1"),"UTF-8");
		
		// pay_type
		String  pay_type = new String(request.getParameter("pay_type").getBytes("ISO-8859-1"),"UTF-8");
		
		// order_id
		String order_id = new String(request.getParameter("order_id").getBytes("ISO-8859-1"),"UTF-8");
 
		// business_time
		String business_time = new String(request.getParameter("business_time").getBytes("ISO-8859-1"),"UTF-8");
		 
		// notify_url
		String notify_url = new String(request.getParameter("notify_url").getBytes("ISO-8859-1"),"UTF-8");
 
		// order_desc
		String  order_desc = new String(request.getParameter("order_desc").getBytes("ISO-8859-1"),"UTF-8");
		//the transaction amount in the currency given above;
		// merchant_id
		String  merchant_id = new String(request.getParameter("merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		//Used as identification of an Alipay user.
		// sub_merchant_id
		String sub_merchant_id = new String(request.getParameter("sub_merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		
		

		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("input_charset", "UTF-8");
        sParaTemp.put("version", "N2");
 		sParaTemp.put("partner",PayConfig.partner);
		sParaTemp.put("service", "push");
		sParaTemp.put("sign_type", PayConfig.sign_type);
		
		sParaTemp.put("amount", amount);
		sParaTemp.put("pay_type", "wx");
		sParaTemp.put("order_id", order_id);
		sParaTemp.put("business_time", business_time);
		sParaTemp.put("notify_url", notify_url);
		sParaTemp.put("order_desc", order_desc);
		sParaTemp.put("merchant_id", merchant_id);
		sParaTemp.put("sub_merchant_id", sub_merchant_id);
		 
		
		
		//建立请求
		String sHtmlText = PaySubmit.buildRequest("", "", sParaTemp);
		System.out.println(sHtmlText);
		out.println(PayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
