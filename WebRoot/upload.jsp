
<%

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
* {
	margin: 0;
	padding: 0;
}

ul, ol {
	list-style: none;
}

.title {
	color: #ADADAD;
	font-size: 14px;
	font-weight: bold;
	padding: 8px 16px 5px 10px;
}

.hidden {
	display: none;
}

.new-btn-login-sp {
	border: 1px solid #D74C00;
	padding: 1px;
	display: inline-block;
}

.new-btn-login {
	background-color: #ff8c00;
	color: #FFFFFF;
	font-weight: bold;
	border: medium none;
	width: 82px;
	height: 28px;
}

.new-btn-login:hover {
	background-color: #ffa300;
	width: 82px;
	color: #FFFFFF;
	font-weight: bold;
	height: 28px;
}

.bank-list {
	overflow: hidden;
	margin-top: 5px;
}

.bank-list li {
	float: left;
	width: 153px;
	margin-bottom: 5px;
}

#main {
	width: 750px;
	margin: 0 auto;
	font-size: 14px;
	font-family: '宋体';
}

#logo {
	background-color: transparent;
	background-image: url("images/new-btn-fixed.png");
	border: medium none;
	background-position: 0 0;
	width: 166px;
	height: 35px;
	float: left;
}

.red-star {
	color: #f00;
	width: 10px;
	display: inline-block;
}

.null-star {
	color: #fff;
}

.content {
	margin-top: 5px;
}

.content dt {
	width: 160px;
	display: inline-block;
	text-align: right;
	float: left;
}

.content dd {
	margin-left: 100px;
	margin-bottom: 5px;
}

#foot {
	margin-top: 10px;
}

.foot-ul li {
	text-align: center;
}

.note-help {
	color: #999999;
	font-size: 12px;
	line-height: 130%;
	padding-left: 3px;
}

.cashier-nav {
	font-size: 14px;
	margin: 15px 0 10px;
	text-align: left;
	height: 30px;
	border-bottom: solid 2px #CFD2D7;
}

.cashier-nav ol li {
	float: left;
}

.cashier-nav li.current {
	color: #AB4400;
	font-weight: bold;
}

.cashier-nav li.last {
	clear: right;
}

.pay_link {
	text-align: right;
}

.pay_link a:link {
	text-decoration: none;
	color: #8D8D8D;
}

.pay_link a:visited {
	text-decoration: none;
	color: #8D8D8D;
}
</style>
</head>
<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=4>
	<div id="main">

		<div class="cashier-nav">
			<ol>
				<li class="current">1、确认信息 →</li>
				<li>2、点击确认 →</li>
				<li class="last">3、确认完成</li>
			</ol>
		</div>
		<form  action=upload_confirm.jsp method=post target="_blank">
			<div id="body" style="clear: left">
				<dl class="content">
					<dt> name：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="name" value="Test"/>
						<span>name  </span>
					</dd>
					<dt>realName：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="realName"
							value="张三" /> <span> realName </span>
					</dd>
					<dt>id_no：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="id_no"
							value="330228199001010001" /> <span> id_no</span>
					</dd>
					<dt>id_no_issued：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="id_no_issued" value="上海市公安局闵行分局"/> <span> id_no_issued</span>
					</dd>
					<dt>id_no_valid：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="id_no_valid" value="2020-01-30" /> <span> id_no_valid</span>
					</dd>
					<dt>mobile：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="mobile" value="13817012345" /> <span> mobile</span>
					</dd>
					<dt>business_province：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="business_province" value="江苏省" /> <span> business_province</span>
					</dd>
					<dt>business_city：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="business_city" value="南京市" /> <span> business_city</span>
					</dd>
					<dt>address：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="address" value="A大街1号" /> <span> address</span>
					</dd>
					<dt>user_type：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="user_type" value="3" /> <span> user_type</span>
					</dd>
					<dt>license_num：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="license_num" value="913101156809776075" /> <span> license_num</span>
					</dd>
					<dt>wx_string：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="wx_string" value="企业---电商/团购---团购" /> <span> wx_string</span>
					</dd>
					<dt>ali_string：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="ali_string" value="美食---中餐---湖北菜" /> <span> ali_string</span>
					</dd>
					<dt>acc_type：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="acc_type" value="1" /> <span> acc_type</span>
					</dd>
					<dt>bank：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="bank" value="105" /> <span> bank</span>
					</dd>
					<dt>kh_province：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="kh_province" value="上海市" /> <span> kh_province</span>
					</dd>
					<dt>kh_city：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="kh_city" value="上海市" /> <span> kh_city</span>
					</dd>
					<dt>bank_name：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="bank_name" value="中国建设银行上海七莘路支行" /> <span> bank_name</span>
					</dd>
					<dt>bank_accName：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="bank_accName" value="张三" /> <span> bank_accName</span>
					</dd>
					<dt>bank_acc：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="bank_acc" value="6217001210033089408" /> <span> bank_acc</span>
					</dd>
					<dt>fee_rate：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="fee_rate" value="0.6" /> <span> fee_rate</span>
					</dd>
					<dt>wx_fee_rate：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="wx_fee_rate" value="0.6" /> <span> wx_fee_rate</span>
					</dd>
					<dt>ali_fee_rate：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="ali_fee_rate" value="0.6" /> <span> ali_fee_rate</span>
					</dd>
					<dt>isv_pid：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="isv_pid" value="12345" /> <span> isv_pid</span>
					</dd>
					<dt>merchant_id：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="merchant_id" value="99911010019" /> <span> merchant_id</span>
					</dd>
					<dd>
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">确 认</button>
						</span>
					</dd>
				</dl>
			</div>
		</form>
		<div id="foot">
			<ul class="foot-ul">
				<li><font class="note-help">如果您点击“确认”按钮，即表示您同意该次的执行操作。 </font></li>
			</ul>
		</div>
	</div>
</body>
</html>