package com.pay.util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CyclicBarrier;

import com.pay.config.PayConfig;

public class PayTest {

	public static void main(String[] args) {
//		// 设置并发数
//		int count = 1;
//		CyclicBarrier cyclicBarrier = new CyclicBarrier(count);
//		ExecutorService executorService = Executors.newFixedThreadPool(count);
//		for (int i = 0; i < count; i++) {
//			try {
//				Thread.sleep(1);
//				executorService.execute(new PayTest().new Task(cyclicBarrier));
//			} catch (InterruptedException e) {
//				e.printStackTrace();
//			}
//		}
//		executorService.shutdown();
//		while (!executorService.isTerminated()) {
//			try {
//				Thread.sleep(10);
//			} catch (InterruptedException e) {
//				e.printStackTrace();
//			}
//		}
		PayTest pt = new PayTest();
		Map<String, String> sParaTemp = pt.newPushKj(); //推送快捷
		//Map<String, String> sParaTemp = pt.qpay_confirm();//快捷确认
		// 建立请求
		String sHtmlText;
		try {
			sHtmlText = PaySubmit.buildRequest("", "", sParaTemp);
			System.out.println(sHtmlText);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


	//String merchant_id = "99911010019";//测试
	
	//String merchant_id = "900029000000225";//生产
//	String merchant_id = "900029000000229";//生产
	
	String merchant_id="99911010019";
	
	
	
	public Map<String, String> getParam() {
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("input_charset", "UTF-8");
		sParaTemp.put("version", "N2");
		sParaTemp.put("partner", PayConfig.partner);
		sParaTemp.put("sign_type", PayConfig.sign_type);
		return sParaTemp;
	}

	public Map<String, String> query() {
		Map<String, String> sParaTemp = this.getParam();
		sParaTemp.put("service", "query");
		sParaTemp.put("order_id", "POS2017090400026754");
		sParaTemp.put("merchant_id", merchant_id);
		return sParaTemp;
	}
	
	public Map<String, String> push() {
		Map<String, String> sParaTemp = this.getParam();
		sParaTemp.put("service", "push");
		sParaTemp.put("order_id", "");
		sParaTemp.put("merchant_id", merchant_id);
		sParaTemp.put("sign_type", PayConfig.sign_type);
		sParaTemp.put("amount", "100");
		sParaTemp.put("pay_type", "aliJsPay");
		sParaTemp.put("order_id", System.currentTimeMillis() + "");
		sParaTemp.put("business_time", "2017-07-17 12:59:36");
		sParaTemp.put("notify_url", "http://www.baidu.com");
		sParaTemp.put("order_desc", "IPHONE");
		sParaTemp.put("sub_merchant_id", "");
		return sParaTemp;
	}
	
	
	public Map<String, String> newPushKj() {
		Map<String, String> sParaTemp = this.getParam();
//		 [credit_bank_code]=[308]
//			      [fee_rate]=[0.1]
//			      [sign_type]=[MD5]
//			      [input_charset]=[UTF-8]
//			      [order_id]=[20170707000001]
//			      [acc]=[6258212006281122]
//			      [version]=[N2]
//			      [debit_bank_code]=[303]
//			      [amount]=[100]
//			      [sign]=[09309886e84aba6197f884102f9f6898]
//			      [business_time]=[2017-09-18 12:59:11]
//			      [settlement_acc]=[6226630602339486]
//			      [order_desc]=[IPHONE]
//			      [name]=[刘德华]
//			      [t0_fee]=[200]
//			      [service]=[qpay]
//			      [cvv]=[440]
//			      [partner]=[100000000000000]
//			      [merchant_id]=[99911010019]
//			      [validity_date]=[0621]
//			      [id_no]=[430426199601236634]
//			      [mobile]=[15874844526]
		sParaTemp.put("service", "newQpay");
		sParaTemp.put("merchant_id", merchant_id);
		sParaTemp.put("sign_type", PayConfig.sign_type);
		sParaTemp.put("amount", "250000");
		//sParaTemp.put("pay_type", "newQpay");
		sParaTemp.put("order_id", System.currentTimeMillis() + "");
		sParaTemp.put("business_time", "2017-07-17 12:59:36");
		//sParaTemp.put("notify_url", "http://www.baidu.com");
		sParaTemp.put("order_desc", "IPHONE");
		sParaTemp.put("sub_merchant_id", "");
		
		sParaTemp.put("credit_bank_code", "308");
		
		sParaTemp.put("acc", "4392260802157618");
		
		sParaTemp.put("name", "黄昌可");
		sParaTemp.put("cvv", "783");
		sParaTemp.put("validity_date", "0420");
		sParaTemp.put("id_no", "422422197909194217");
		sParaTemp.put("mobile", "13764077787");
		
		return sParaTemp;
	}
	
	
	public Map<String, String> pushKj() {
		Map<String, String> sParaTemp = this.getParam();
//		 [credit_bank_code]=[308]
//			      [fee_rate]=[0.1]
//			      [sign_type]=[MD5]
//			      [input_charset]=[UTF-8]
//			      [order_id]=[20170707000001]
//			      [acc]=[6258212006281122]
//			      [version]=[N2]
//			      [debit_bank_code]=[303]
//			      [amount]=[100]
//			      [sign]=[09309886e84aba6197f884102f9f6898]
//			      [business_time]=[2017-09-18 12:59:11]
//			      [settlement_acc]=[6226630602339486]
//			      [order_desc]=[IPHONE]
//			      [name]=[刘德华]
//			      [t0_fee]=[200]
//			      [service]=[qpay]
//			      [cvv]=[440]
//			      [partner]=[100000000000000]
//			      [merchant_id]=[99911010019]
//			      [validity_date]=[0621]
//			      [id_no]=[430426199601236634]
//			      [mobile]=[15874844526]
		sParaTemp.put("service", "qpay");
		sParaTemp.put("merchant_id", merchant_id);
		sParaTemp.put("sign_type", PayConfig.sign_type);
		sParaTemp.put("amount", "250000");
		//sParaTemp.put("pay_type", "qpay");
		sParaTemp.put("order_id", System.currentTimeMillis() + "");
		sParaTemp.put("business_time", "2017-07-17 12:59:36");
		//sParaTemp.put("notify_url", "http://www.baidu.com");
		sParaTemp.put("order_desc", "IPHONE");
		sParaTemp.put("sub_merchant_id", "");
		
		sParaTemp.put("credit_bank_code", "308");
		sParaTemp.put("fee_rate", "0.5");
		sParaTemp.put("acc", "4392260802157618");
		sParaTemp.put("debit_bank_code", "303");
		
		sParaTemp.put("t0_fee", "200");
		
		
		
		sParaTemp.put("settlement_acc", "6214920602604611");
		return sParaTemp;
	}
	
	public Map<String, String> qpay_confirm() {
		Map<String, String> sParaTemp = this.getParam();
		sParaTemp.put("service", "qpay_confirm");
		sParaTemp.put("merchant_id", merchant_id);
		sParaTemp.put("sign_type", PayConfig.sign_type);
		sParaTemp.put("order_id",  "1508816339438");
		sParaTemp.put("check_code", "967224");
		return sParaTemp;
	}
	

	public class Task implements Runnable {
		//生产
		String merchant_id = "900029000000225";
		//测试
		//String merchant_id = "99911010019";
		
		public Map<String, String> getParam() {
			Map<String, String> sParaTemp = new HashMap<String, String>();
			sParaTemp.put("input_charset", "UTF-8");
			sParaTemp.put("version", "N2");
			sParaTemp.put("partner", PayConfig.partner);
			sParaTemp.put("sign_type", PayConfig.sign_type);
			return sParaTemp;
		}

		public Map<String, String> query() {
			Map<String, String> sParaTemp = this.getParam();
			sParaTemp.put("service", "query");
			sParaTemp.put("order_id", "POS2017090400026754");
			sParaTemp.put("merchant_id", merchant_id);
			return sParaTemp;
		}
		
		public Map<String, String> push() {
			Map<String, String> sParaTemp = this.getParam();
			sParaTemp.put("service", "push");
			sParaTemp.put("order_id", "");
			sParaTemp.put("merchant_id", merchant_id);
			sParaTemp.put("sign_type", PayConfig.sign_type);
			sParaTemp.put("amount", "100");
			sParaTemp.put("pay_type", "aliJsPay");
			sParaTemp.put("order_id", System.currentTimeMillis() + "");
			sParaTemp.put("business_time", "2017-07-17 12:59:36");
			sParaTemp.put("notify_url", "http://www.baidu.com");
			sParaTemp.put("order_desc", "IPHONE");
			sParaTemp.put("sub_merchant_id", "");
			return sParaTemp;
		}
		
		public Map<String, String> pushKj() {
			Map<String, String> sParaTemp = this.getParam();
			
//			 [credit_bank_code]=[308]
//				      [fee_rate]=[0.1]
//				      [sign_type]=[MD5]
//				      [input_charset]=[UTF-8]
//				      [order_id]=[20170707000001]
//				      [acc]=[6258212006281122]
//				      [version]=[N2]
//				      [debit_bank_code]=[303]
//				      [amount]=[100]
//				      [sign]=[09309886e84aba6197f884102f9f6898]
//				      [business_time]=[2017-09-18 12:59:11]
//				      [settlement_acc]=[6226630602339486]
//				      [order_desc]=[IPHONE]
//				      [name]=[刘德华]
//				      [t0_fee]=[200]
//				      [service]=[qpay]
//				      [cvv]=[440]
//				      [partner]=[100000000000000]
//				      [merchant_id]=[99911010019]
//				      [validity_date]=[0621]
//				      [id_no]=[430426199601236634]
//				      [mobile]=[15874844526]
				    		  
			sParaTemp.put("service", "qpay");
			 
			//sParaTemp.put("order_id", "");
			sParaTemp.put("merchant_id", merchant_id);
			sParaTemp.put("sign_type", PayConfig.sign_type);
			sParaTemp.put("amount", "2000");
			//sParaTemp.put("pay_type", "qpay");
			sParaTemp.put("order_id", System.currentTimeMillis() + "");
			sParaTemp.put("business_time", "2017-07-17 12:59:36");
			//sParaTemp.put("notify_url", "http://www.baidu.com");
			sParaTemp.put("order_desc", "IPHONE");
			sParaTemp.put("sub_merchant_id", "");
			
			sParaTemp.put("credit_bank_code", "308");
			sParaTemp.put("fee_rate", "0.5");
			sParaTemp.put("acc", "4392260802157618");
			sParaTemp.put("debit_bank_code", "303");
			sParaTemp.put("name", "黄昌可");
			sParaTemp.put("t0_fee", "200");
			sParaTemp.put("cvv", "783");
			sParaTemp.put("validity_date", "0420");
			sParaTemp.put("id_no", "422422197909194217");
			sParaTemp.put("mobile", "13764077787");
			sParaTemp.put("settlement_acc", "6214920602604611");
			return sParaTemp;
		}
		
		
		private CyclicBarrier cyclicBarrier;

		public Task(CyclicBarrier cyclicBarrier) {
			this.cyclicBarrier = cyclicBarrier;
		}

		@Override
		public void run() {
			try {
				// 等待所有任务准备就绪
				cyclicBarrier.await();
				// 测试内容
				// System.out.println("Worker's working "+cyclicBarrier);
				Map<String, String> sParaTemp = this.pushKj();
				// 建立请求
				String sHtmlText = PaySubmit.buildRequest("", "", sParaTemp);
				System.out.println(sHtmlText);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}