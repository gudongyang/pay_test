
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
		<form action=qpay_api.jsp method=post target="_blank">
			<div id="body" style="clear: left">
				<dl class="content">
					<dt>amount：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="amount"
							value="500" /> <span>amount </span>
					</dd>

					<dt>order_id：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="order_id"
							value="20170717000001" /> <span> order_id</span>
					</dd>
					<dt>business_time：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="business_time" value="2017-07-17 12:59:36" /> <span>
							business_time</span>
					</dd>
					<dt>notify_url：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="notify_url" value="http://www.baidu.com" /> <span>
							notify_url</span>
					</dd>

					<dt>merchant_id：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="merchant_id" value="99911010019" /> <span>
							merchant_id</span>
					</dd>



					<dt>name：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="name"
							value="" /> <span> name</span>
					</dd>


					<dt>id_no：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="id_no"
							value="" /> <span> id_no</span>
					</dd>


					<dt>acc：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="acc"
							value="" /> <span> acc</span>
					</dd>



					<dt>cvv：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="cvv"
							value="" /> <span> cvv</span>
					</dd>


					<dt>validity_date：</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="validity_date" value="" /> <span> validity_date</span>
					</dd>

					<dt>mobile</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="mobile"
							value="" /> <span> mobile</span>
					</dd>


					<dt>settlement_acc</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="settlement_acc" value="" /> <span> settlement_acc</span>
					</dd>

					<dt>credit_bank_code</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="credit_bank_code" value="" /> <span>
							credit_bank_code</span>
					</dd>


					<dt>debit_bank_code</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="debit_bank_code" value="" /> <span> debit_bank_code</span>
					</dd>

					<dt>order_desc</dt>
					<dd>
						<span class="null-star">*</span> <input size="30"
							name="order_desc" value="IPHONE" /> <span> order_desc</span>
					</dd>

					<dt>fee</dt>
					<dd>
						<span class="null-star">*</span> <input size="30" name="fee"
							value="300" /> <span> fee</span>
					</dd>


					<dt></dt>
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