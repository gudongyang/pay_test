
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.pay.config.*"%>
<%@ page import="com.pay.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>易生快捷支付接口</title>
	</head>
	<%
		////////////////////////////////////请求参数//////////////////////////////////////

		//amount
		String amount = new String(request.getParameter("amount").getBytes("ISO-8859-1"),"UTF-8");
	
		// order_id
		String order_id = new String(request.getParameter("order_id").getBytes("ISO-8859-1"),"UTF-8");
 
		// business_time
		String business_time = new String(request.getParameter("business_time").getBytes("ISO-8859-1"),"UTF-8");
		 

		// notify_url
		String notify_url = new String(request.getParameter("notify_url").getBytes("ISO-8859-1"),"UTF-8");
 
	 
		// merchant_id
		String  merchant_id = new String(request.getParameter("merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		//Used as identification of an Alipay user.
		String  name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");

		String  id_no = new String(request.getParameter("id_no").getBytes("ISO-8859-1"),"UTF-8");
		 
		String  acc = new String(request.getParameter("acc").getBytes("ISO-8859-1"),"UTF-8");
		
		String  cvv = new String(request.getParameter("cvv").getBytes("ISO-8859-1"),"UTF-8");

		String  validity_date = new String(request.getParameter("validity_date").getBytes("ISO-8859-1"),"UTF-8");
		String  mobile = new String(request.getParameter("mobile").getBytes("ISO-8859-1"),"UTF-8");
  		
 		String  credit_bank_code = new String(request.getParameter("credit_bank_code").getBytes("ISO-8859-1"),"UTF-8");

		String  order_desc = new String(request.getParameter("order_desc").getBytes("ISO-8859-1"),"UTF-8");


		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("input_charset", "UTF-8");
        sParaTemp.put("version", "N2");
 		sParaTemp.put("partner",PayConfig.partner);
		sParaTemp.put("service", "newQpay");
		sParaTemp.put("sign_type", PayConfig.sign_type);
		
		sParaTemp.put("amount", amount);
		sParaTemp.put("order_id", order_id);
		sParaTemp.put("business_time", business_time);
		sParaTemp.put("notify_url", notify_url);
 		sParaTemp.put("merchant_id", merchant_id);
 		
 		
		sParaTemp.put("name", name);
		sParaTemp.put("id_no", id_no);
		
		sParaTemp.put("acc", acc);
		sParaTemp.put("cvv", cvv);
		sParaTemp.put("validity_date", validity_date);
		sParaTemp.put("mobile", mobile);

		sParaTemp.put("credit_bank_code", credit_bank_code);
		sParaTemp.put("order_desc", order_desc);
		

		




 		
		//建立请求
		String sHtmlText = PaySubmit.buildRequest("", "", sParaTemp);
		System.out.println(sHtmlText);
		out.println(PayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
