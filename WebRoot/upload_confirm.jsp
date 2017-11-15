
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

		//name
		String name = new String(request.getParameter("name").getBytes("GBK"),"UTF-8");
		
		// realName
		String  realName = new String(request.getParameter("realName").getBytes("GBK"),"GBK");
		
		// id_no
		String id_no = new String(request.getParameter("id_no").getBytes("ISO-8859-1"),"UTF-8");
 
		// id_no_issued
		String id_no_issued = new String(request.getParameter("id_no_issued").getBytes("GBK"),"GBK");
		 
		// id_no_valid
		String id_no_valid = new String(request.getParameter("id_no_valid").getBytes("ISO-8859-1"),"UTF-8");
 
		// mobile
		String  mobile = new String(request.getParameter("mobile").getBytes("ISO-8859-1"),"UTF-8");

		String  business_province = new String(request.getParameter("business_province").getBytes("GBK"),"GBK");
		
		String  business_city = new String(request.getParameter("business_city").getBytes("GBK"),"GBK");
		
		String  address = new String(request.getParameter("address").getBytes("GBK"),"GBK");
		
		String user_type = new String(request.getParameter("user_type").getBytes("ISO-8859-1"),"UTF-8");
		
		String  license_num = new String(request.getParameter("license_num").getBytes("ISO-8859-1"),"UTF-8");
		
		String  wx_string = new String(request.getParameter("wx_string").getBytes("GBK"),"GBK");
		
		String  ali_string = new String(request.getParameter("ali_string").getBytes("GBK"),"GBK");
		
		String acc_type = new String(request.getParameter("acc_type").getBytes("ISO-8859-1"),"UTF-8");
		
		String bank = new String(request.getParameter("bank").getBytes("ISO-8859-1"),"UTF-8");
		
		String  kh_province = new String(request.getParameter("kh_province").getBytes("GBK"),"GBK");
		
		String  kh_city = new String(request.getParameter("kh_city").getBytes("GBK"),"GBK");
		
		String  bank_name = new String(request.getParameter("bank_name").getBytes("GBK"),"GBK");
		
		String  bank_accName = new String(request.getParameter("bank_accName").getBytes("GBK"),"GBK");
		
		String  bank_acc = new String(request.getParameter("bank_acc").getBytes("ISO-8859-1"),"UTF-8");
		
		String  fee_rate = new String(request.getParameter("fee_rate").getBytes("ISO-8859-1"),"UTF-8");
		
		String  wx_fee_rate = new String(request.getParameter("wx_fee_rate").getBytes("ISO-8859-1"),"UTF-8");
		
		String  ali_fee_rate = new String(request.getParameter("ali_fee_rate").getBytes("ISO-8859-1"),"UTF-8");
		
		String  isv_pid = new String(request.getParameter("isv_pid").getBytes("ISO-8859-1"),"UTF-8");
		
		// merchant_id
		String  merchant_id = new String(request.getParameter("merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		//Used as identification of an Alipay user.
		
		

		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("input_charset", "UTF-8");
        sParaTemp.put("version", "N2");
 		sParaTemp.put("partner",PayConfig.partner);
		sParaTemp.put("service", "upload_merchant");
		sParaTemp.put("sign_type", PayConfig.sign_type);
		
		sParaTemp.put("merchant_id", merchant_id);
		sParaTemp.put("name", name);
		sParaTemp.put("realName", realName);
		sParaTemp.put("id_no", id_no);
		sParaTemp.put("id_no_issued", id_no_issued);
		sParaTemp.put("id_no_valid", id_no_valid);
		sParaTemp.put("mobile", mobile);
		sParaTemp.put("business_province", business_province);
		sParaTemp.put("business_city", business_city);
		sParaTemp.put("address", address);
		sParaTemp.put("user_type", user_type);
		sParaTemp.put("license_num", license_num);
		sParaTemp.put("wx_string", wx_string);
		sParaTemp.put("ali_string", ali_string);
		sParaTemp.put("acc_type", acc_type);
		sParaTemp.put("bank", bank);
		sParaTemp.put("kh_province", kh_province);
		sParaTemp.put("kh_city", kh_city);
		sParaTemp.put("bank_name", bank_name);
		sParaTemp.put("bank_accName", bank_accName);
		sParaTemp.put("bank_acc", bank_acc);
		sParaTemp.put("fee_rate", fee_rate);
		sParaTemp.put("wx_fee_rate", wx_fee_rate);
		sParaTemp.put("ali_fee_rate", ali_fee_rate);
		sParaTemp.put("isv_pid", isv_pid);
		
		
		//建立请求
		String sHtmlText = PaySubmit.buildRequest("", "", sParaTemp);
		System.out.println(sHtmlText);
		out.println(PayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
