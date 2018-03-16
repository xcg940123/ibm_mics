//package com.ibm.mics.sql.userService;
//
//import java.net.MalformedURLException;
//import java.security.MessageDigest;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.apache.catalina.Contained;
//import org.apache.log4j.Logger;
//import org.mockito.internal.stubbing.answers.ReturnsElementsOf;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.PropertySource;
//import org.springframework.context.annotation.PropertySources;
//import org.springframework.remoting.rmi.RmiBasedExporter;
//import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//
//import com.ibm.mics.entity.util.*;
//import com.ibm.mics.json.entity.base.JacksonUtil;
//import com.ibm.mics.json.entity.base.Json_fabric;
//import com.ibm.mics.sql.mapper.*;
//import com.jcraft.jsch.Session;
//
//import cn.mics.brank.main.test.mainTest;
//import io.fabric8.kubernetes.api.model.NamedExtensionFluent.ScaleExtensionNested;
//import net.minidev.json.JSONObject;
//
//
//@Controller
//@RequestMapping("/user/*")
//@PropertySources({ @PropertySource(value = "classpath:micsApplication.properties", ignoreResourceNotFound = true) })
//public class UserServices {
//	@Autowired
//	private UserMapper usermapper;
//	@Autowired
//	private OrderMapper ordermapper;
//	@Autowired
//	private OrderContractMapper ordercontractmapper;
//	@Autowired
//	private MadicalCareMapper madicalcaremapper;
//	@Autowired
//	private ContractMapper contractmapper;
//	@Autowired
//    private HttpSession session;
//	
//	// 首页
//	@RequestMapping("/index")
//	public String index() {
//		return "index";
//	}
//
//	 //填保
//	 public String orderContract() {
//	 return "orderContract";
//	 }
//	 
//	 //存储合同信息
//	 @RequestMapping(value = "/saveorderInfo", method = RequestMethod.POST)
//	 @ResponseBody
//	 public String saveorderInfo (String kind1, String range1, String customQuotation1, String kind2, String range2,
//				String customQuotation2, String kind3, String range3, String customQuotation3, String kind4, String range4,
//				String customQuotation4, String kind5, String range5, String customQuotation5, String kind6, String range6,
//				String customQuotation6, String kind7, String range7, String customQuotation7, String kind8, String range8,
//				String customQuotation8, String date, String totalValue, String orderstartDate, String orderendDate,
//				String city, String orderName, String certifitype, String certifiNumber, String sex, String birthday,
//				String phonenumber, String email, String orderedName, String relationship, String certifiType2,
//				String certifiNumber2, String birthday2, String sex2, String phoneNumber2,String contractState,String userName,String contractName,String manager,String contractId){
//		contractState = "1";
//		contractId = "contract";
//		userName = session.getAttribute("username").toString();
//		Contract contract = new Contract(kind1, range1, customQuotation1, kind2, range2, customQuotation2, kind3, range3, 
//				customQuotation3, kind4, range4, customQuotation4, kind5, range5, customQuotation5, kind6, range6, customQuotation6, 
//				kind7, range7, customQuotation7, kind8, range8, customQuotation8, date, totalValue, orderstartDate, orderendDate, city, 
//				orderName, certifitype, certifiNumber, sex, birthday, phonenumber, email, orderedName, relationship, certifiType2, certifiNumber2, 
//				birthday2, sex2, phoneNumber2, contractState, userName,contractName,manager,contractId);
//		contractmapper.insertContract(contract);
//      String value= JacksonUtil.toJSon(contract);
//      String contractID=certifiNumber+"contract";
//      mainTest.getInformation("invoke",contractID,value);
//      System.out.println("88888"+contractID);	
//     // maintest.getInformation("query", "contract", "");
//		return "success"; 
//	 }
//
//	// 电子病历
//	@RequestMapping(value = "/savemedicalCare", method = RequestMethod.POST)
//	@ResponseBody
//	public String medicalCare(String certifyType3,String certifiNumber3,String age,String sex3,String zhuyuan,String type,String visitTime,String miaoshu,String history,String kind,String range,String payment,String patientName) {
//		String msg="";
//		MedicalCare medicalcare = new MedicalCare(certifyType3,certifiNumber3,age,sex3,zhuyuan,type,visitTime,miaoshu,kind, range, history,payment, patientName);
////		msg = JacksonUtil.toJSon(patientName);
//		System.out.println(patientName);
//			madicalcaremapper.insertmedical(medicalcare);
//		return msg;
//	}
//
//	 //合同
//	 @RequestMapping("/contract")
//	 public String contract() {
//	 return "contract";
//	 }
//	 
//	//电子病历;
//	@RequestMapping("/medicalCare")
//	public String medicalCare() {
//		return "medicalCare";
//	}
//	
//	// 保险
//	@RequestMapping("/buy")
//	public String buy() {
//		return "buy";
//	}
//	
//	// 立即购买
//
//	@RequestMapping("/order")
//	public String order() {
//		return "order";
//	}
//
//	@RequestMapping("/settlement")
//	public String settlement() {
//		return "settlement";
//	}
//	
//	@RequestMapping("/information")
////	@ResponseBody
//	public String information(HttpSession session) {
//		if(session.getAttribute("username") == null){
//			return "login";
//		}
//		return "information";
//	}
//	
//	// 个人信息
//	@RequestMapping(value = "/info", method = RequestMethod.POST)
//	@ResponseBody
//	public String info(HttpSession session) {
//		if(session.getAttribute("username") == null){
//			return "needLogin";
//		}
//		return "information";
//	}
//
//	// 登陆页面
//
//	@RequestMapping("/login")
//	public String login() {
//		return "/login";
//	}
//
//	// 注册页面
//
//	@RequestMapping("/register")
//	public String register() {
//		return "/register";
//	}
//
//	// 理赔页面
//	@RequestMapping("/configure")
//	public String configure() {
//		return "/configure";
//	}
//	
//	// 员工页面
//	@RequestMapping("/admin")
//	public String admin() {
//		return "/admin";
//	}
//
//	// admin登陆页面
//	@RequestMapping("/adminlogin")
//	public String adminlogin() {
//		return "/adminLogin";
//	}
//
//	// admin登陆页面
//	@RequestMapping("/doctorLogin")
//	public String doctorLogin() {
//		return "/doctorLogin";
//	}
//
//	// 登录方法
//	@RequestMapping("/adddoctorlogin")
//	public String adddoctorlogin(HttpServletRequest request) {
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		password = mdPassword(password, username);
//		User user = new User(username, password);
//		User userVerify = usermapper.getUser(username);
//		while (username.equals(userVerify.getUserName()) && password.equals(userVerify.getPassword())) {
//			return "medicalCare";
//		}
//		return "adddoctorlogin";
//	}
//	
//	// 登录方法
//	@RequestMapping("/addlogin")
//	public String login(HttpServletRequest request) {
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		password = mdPassword(password, username);
//		User user = new User(username, password);
//		User userVerify = usermapper.getUser(username);
//		System.out.println(username+password);
//		while (username.equals(userVerify.getUserName()) && password.equals(userVerify.getPassword())) {
//			// 设置session
////			HttpSession session = request.getSession(); 
////			  UUID uid = (UUID) session.getAttribute("uid"); 
////			  if (uid == null) { 
////			    uid = UUID.randomUUID(); 
////			  } 
//			  session.setAttribute("username", username);
//			  System.out.println(session.getAttribute("username")+"123123123123");
//			return "index";
//		}
//		return "login";
//	}
//	
//	//退出登录
//	@RequestMapping("/logout")
////	@ResponseBody
//	public String logout(HttpSession session){
//		System.out.println(session.getAttribute("username"));
//		session.invalidate();
//		return "login";
//	}
//
//	// 员工登录方法
//	@RequestMapping("/addadminlogin")
//	public String adminlogin(HttpServletRequest request) {
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		password = mdPassword(password, username);
//		User user = new User(username, password);
//		User userVerify = usermapper.getUser(username);
//		while (username.equals(userVerify.getUserName()) && password.equals(userVerify.getPassword())) {
//			return "admin";
//		}
//		return "adminlogin";
//	}
//
//	// 注册方法
//	@RequestMapping(value = "/addregister", method = RequestMethod.POST)
//	@ResponseBody
//	public String register(String username,String password,String password2) {
////		String msg = "";
//		User userVerify = usermapper.getUser(username);
////		用户名注册检验
//		if (username == "" || password == "" || password2 == "") {
//			return "用户名、密码不能为空";
//		}else if (userVerify != null) {
//			return "用户名已存在";
//		} else if (!(password.equals(password2))) {
//			return "密码不一致";
//		} else {
//			password = mdPassword(password, username);
//			User user = new User(username, password);
//			usermapper.insert(user);
//			return "success";
//		}
//	}
//
//
//	//madicalCare数据存储
//	//读取order数据存储
//	@RequestMapping(value = "/orderInfo", method = RequestMethod.POST)
//	@ResponseBody
//	public String contract(String orderstartDate,String orderendDate,String city,String orderName,String certifitype
//			,String certifiNumber,String sex,String birthday,String phonenumber,String email,String orderedName
//			,String relationship,String certifiType2,String certifiNumber2,String birthday2,String sex2,String phoneNumber2) {
//		OrderInfo orderinfo=new OrderInfo(orderstartDate,orderendDate,city,orderName,certifitype,certifiNumber,sex,birthday,phonenumber,email);
//		ordercontractmapper.insertorderinfo(orderinfo);
//		OrderedInfo orderedinfo=new OrderedInfo(orderedName,relationship,certifiType2,certifiNumber2,birthday2,sex2,phoneNumber2);
//		ordercontractmapper.insertorderedinfo(orderedinfo);
//		return "contract";
//	}
//
//	//读取投保人与被投保人信息
//	//读取order数据存储
//	//读取投保人与被投保人信息
//	 //读取order数据存储
//	 @RequestMapping(value = "/detailOrder", method = RequestMethod.POST)
//	 @ResponseBody
//	 public String order(String kind1,String range1,String customQuotation1,String kind2,String range2,String customQuotation2,String kind3,String range3,String customQuotation3,String kind4,String range4,String customQuotation4,
//	     String kind5,String range5,String customQuotation5,String kind6,String range6,String customQuotation6,
//	     String kind7,String range7,String customQuotation7,String kind8,String range8,String customQuotation8,
//	     String date,String totalValue){
////	      String kind1=request.getParameter("kind1");
////	      String range1=request.getParameter("range1");  
////	      String customQuotation1=request.getParameter("customQuotation1");
////	      String kind2=request.getParameter("kind1");
////	      String range2=request.getParameter("range2");
////	      String customQuotation2=request.getParameter("customQuotation2");
////	      String kind3=request.getParameter("kind3");
////	      String range3=request.getParameter("range3"); 
////	      String customQuotation3=request.getParameter("customQuotation3");
////	      String kind4=request.getParameter("kind3");
////	      String range4=request.getParameter("range4");
////	      String customQuotation4=request.getParameter("customQuotation4");
////	      String kind5=request.getParameter("kind5");
////	      String range5=request.getParameter("range5");
////	      String customQuotation5=request.getParameter("customQuotation5");
////	      String kind6=request.getParameter("kind5");
////	      String range6=request.getParameter("range6");
////	      String customQuotation6=request.getParameter("customQuotation6");
////	      String kind7=request.getParameter("kind5");
////	      String range7=request.getParameter("range7"); 
////	      String customQuotation7=request.getParameter("customQuotation7");
////	      String kind8=request.getParameter("kind5");
////	      String range8=request.getParameter("range8");
////	      String customQuotation8=request.getParameter("customQuotation8");
////	      String date=request.getParameter("date");
////	      String totalValue=request.getParameter("totalValue");
////	    System.out.println(kind1);
//	  if (session.getAttribute("username") != null) {
//	   Order order=new Order(kind1,range1,customQuotation1,kind2,range2,customQuotation2,kind3,range3,customQuotation3,kind4,range4,customQuotation4,kind5,range5,customQuotation5,kind6,range6,customQuotation6,kind7,range7,customQuotation7,kind8,range8,customQuotation8,date,totalValue);
//	      ordermapper.insertOrder(order);
//	      return "orderContract";
//	  }  else {
//	   return "fail";
//	  }
//	  
////	         String resMsgJson = "";
////	               Json_fabric message=new Json_fabric();
////	               message.setName("a");
////	               message.setNamevalue("200");
////	               message.setMoney("b");
////	               message.setMoneyvalue("400");
////	               
////	               resMsgJson=JacksonUtil.toJSon(message);
////	               Json_fabric messageToBase=JacksonUtil.readValue(resMsgJson, Json_fabric.class);
////	               System.out.println("我在service"+"======"+resMsgJson+"========");
////	               mainTest maintest = new mainTest();
////	               maintest.getInformation(resMsgJson);
////	               System.out.println("=============="+session.getAttribute("username").toString()+"===============");
////	     String check = session.getAttribute("username").toString();
//	//  return "success";
//	 }
//
//	// 密码加密
//	private static String mdPassword(String password, String username) {
//		String md = "";
//		try {
//			String passw = "{dhjdfu34i34u34-zmew8732dfhjd-";
//			String usern = "dfhjdf8347sdhxcye-ehjcbeww34}";
//			String pass = password + passw + username + usern;
//			md = md5(pass);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return md;
//	}
//
//	private static String md5(String str) {
//		try {
//			byte[] returnByte = str.getBytes("utf-8");
//			MessageDigest md5 = MessageDigest.getInstance("MD5");
//			returnByte = md5.digest(str.getBytes("utf-8"));
//			StringBuffer buf = new StringBuffer("");
//			int i;
//			for (int offset = 0; offset < returnByte.length; offset++) {
//				i = returnByte[offset];
//				if (i < 0)
//					i += 256;
//				if (i < 16)
//					buf.append("0");
//				buf.append(Integer.toHexString(i));
//			}
//			str = buf.toString();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return str;
//	}
//
//	//数据查询（用户信息、合同信息）
//	@RequestMapping(value = "/check", method = RequestMethod.POST)
//	@ResponseBody
//	public List<Contract> userToJson(String searchName,String certifiNumber) {
//		String msg = "";
////		User user = usermapper.getUser(name);
//		String userName = session.getAttribute("username").toString();
//		System.out.println(searchName);
//		String orderedName = searchName;
//		List<Contract> contract = contractmapper.getContract(orderedName,certifiNumber,userName);
////		msg = JacksonUtil.toJSon(contract);
////		for (Contract contract : getcontract) { 
////		List<Contract> list=new ArrayList<Contract>();  
//		  String value= JacksonUtil.toJSon(contract);
//		  String queryID=certifiNumber+searchName;
//	     mainTest.getInformation("query",queryID,value);
//	    	
//		for (int i = 0; i < contract.size(); i++) {
//			msg = JacksonUtil.toJSon(contract.get(i));
//		    System.out.println("+++++++++++++++"+msg);
//		}
////			System.out.println(contract);
////			}
////		System.out.println(name);
////		System.out.println(msg);
//		return contract;
//	}
//	
//	//员工查询具体合同
//	 @RequestMapping(value = "apply", method = RequestMethod.POST)
//	 @ResponseBody
//	 public List<Contract> apply(String orderedName,String certifiNumber){
//	//  String userName = session.getAttribute("username").toString();
//	  System.out.println(orderedName+certifiNumber);
//	  String contractId = "contract";
//	  List<Contract> applyContract = contractmapper.getContract(orderedName, certifiNumber, contractId);
//	  return applyContract;
//	 }
//}
package com.ibm.mics.sql.userService;

import java.net.MalformedURLException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.soap.Detail;

import org.apache.catalina.Contained;
import org.apache.log4j.Logger;
import org.mockito.internal.stubbing.answers.ReturnsElementsOf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.remoting.rmi.RmiBasedExporter;
import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import com.ibm.mics.entity.util.*;
import com.ibm.mics.json.entity.base.JacksonUtil;
import com.ibm.mics.json.entity.base.Json_fabric;
import com.ibm.mics.sql.mapper.*;
import com.jcraft.jsch.Session;

import cn.mics.brank.main.test.mainTest;
import io.fabric8.kubernetes.api.model.NamedExtensionFluent.ScaleExtensionNested;
import net.minidev.json.JSONObject;


@Controller
@RequestMapping("/user/*")
@PropertySources({ @PropertySource(value = "classpath:micsApplication.properties", ignoreResourceNotFound = true) })
public class UserServices {
	@Autowired
	private UserMapper usermapper;
	@Autowired
	private OrderMapper ordermapper;
	@Autowired
	private OrderContractMapper ordercontractmapper;
	@Autowired
	private MadicalCareMapper madicalcaremapper;
	@Autowired
	private ContractMapper contractmapper;
	@Autowired
    private HttpSession session;
	
	// 首页
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	 //填保
	 @RequestMapping("/orderContract")
	 public String orderContract() {
		 if (session.getAttribute("username") != null) {
			return "orderContract";
		}
	 return "login";
	 }
	 
	 //查看保险详情
	 @RequestMapping("/detail")
	 public String detail(){
		 if (session.getAttribute("username") != null) {
				return "detail";
			}
		 return "login";
	 }
	 
	 //存储合同信息
	 @RequestMapping(value = "/saveorderInfo", method = RequestMethod.POST)
	 @ResponseBody
	 public String saveorderInfo (String kind1, String range1, String customQuotation1, String kind2, String range2,
				String customQuotation2, String kind3, String range3, String customQuotation3, String kind4, String range4,
				String customQuotation4, String kind5, String range5, String customQuotation5, String kind6, String range6,
				String customQuotation6, String kind7, String range7, String customQuotation7, String kind8, String range8,
				String customQuotation8, String date, String totalValue, String orderstartDate, String orderendDate,
				String city, String orderName, String certifitype, String certifiNumber, String sex, String birthday,
				String phonenumber, String email, String orderedName, String relationship, String certifiType2,
				String certifiNumber2, String birthday2, String sex2, String phoneNumber2,String contractState,String userName,String contractName,String manager,String contractId){
		contractState = "1";
		manager = "admin";
		contractId = "contract";
		userName = session.getAttribute("username").toString();
		contractName = "一般意外保险";
		Contract contract = new Contract(kind1, range1, customQuotation1, kind2, range2, customQuotation2, kind3, range3, customQuotation3, kind4, range4, customQuotation4, kind5, range5, customQuotation5, kind6, range6, customQuotation6, kind7, range7, customQuotation7, kind8, range8, customQuotation8, date, totalValue, orderstartDate, orderendDate, city, orderName, certifitype, certifiNumber, sex, birthday, phonenumber, email, orderedName, relationship, certifiType2, certifiNumber2, birthday2, sex2, phoneNumber2, contractState, userName, contractName,manager,contractId);
		contractmapper.insertContract(contract);
      String value= JacksonUtil.toJSon(contract);
      String contractID=certifiNumber+"contract";
      mainTest.getInformation("invoke",contractID,value);
      System.out.println("88888"+contractID);	
     // maintest.getInformation("query", "contract", "");
		return "success"; 
	 }

	// 电子病历
	@RequestMapping(value = "/savemedicalCare", method = RequestMethod.POST)
	@ResponseBody
	public String medicalCare(String certifyType3,String certifiNumber3,String age,String sex3,String zhuyuan,String type,String visitTime,String miaoshu,String history,String kind,String range,String payment,String patientName) {
		String msg="";
//		String certifyType3 = request.getParameter("certifyType3");
//		String certifiNumber3 = request.getParameter("certifiNumber3");
//		String age = request.getParameter("age");
//		String sex3 = request.getParameter("sex3");
//		String zhuyuan = request.getParameter("zhuyuan");
//		String type = request.getParameter("type");
//		String visitTime = request.getParameter("visitTime");
//		String miaoshu = request.getParameter("describe");
//		String history = request.getParameter("history");
//		String kind = request.getParameter("kind");
//		String range = request.getParameter("range");
//		String payment = request.getParameter("payment");
//		String patientName = request.getParameter("patientName");//13geshuju
		System.out.println(certifyType3+"==="+certifiNumber3+"==="+age+"==="+sex3+"==="+zhuyuan+"==="+type+"==="+visitTime+"==="+miaoshu+"==="+kind+"==="+range+"==="+history+"==="+payment+"==="+patientName);
		MedicalCare medicalcare = new MedicalCare(certifyType3,certifiNumber3,age,sex3,zhuyuan,type,visitTime,miaoshu,kind, range, history,payment, patientName);
//		MedicalCare medicalcare = new MedicalCare("567","567","567","567sex3","567zhuyuan","567","567","567","567","567","567","567","567");
//		msg = JacksonUtil.toJSon(patientName);
		System.out.println(patientName);
//		try {
			madicalcaremapper.insertmedical(medicalcare);
//
//		}catch(Exception e) {
//			e.printStackTrace();
//			
//		}
		return msg;
	}

	 //合同
	 @RequestMapping("/contract")
	 public String contract() {
		 if (session.getAttribute("username") != null) {
			return "contract";
		}
	 return "login";
	 }
	 
	//电子病历;
	@RequestMapping("/medicalCare")
	public String medicalCare() {
		return "medicalCare";
	}
	
	// 保险
	@RequestMapping("/buy")
	public String buy() {
		return "buy";
	}
	
	// 立即购买

	@RequestMapping("/order")
	public String order() {
		return "order";
	}

	@RequestMapping("/settlement")
	public String settlement() {
		return "settlement";
	}
	
	@RequestMapping("/information")
//	@ResponseBody
	public String information(HttpSession session) {
		if(session.getAttribute("username") == null){
			return "login";
		}
		return "information";
	}
	
	// 个人信息
	@RequestMapping(value = "/info", method = RequestMethod.POST)
	@ResponseBody
	public String info(HttpSession session) {
		if(session.getAttribute("username") == null){
			return "needLogin";
		}
		return "information";
	}

	// 登陆页面

	@RequestMapping("/login")
	public String login() {
		return "/login";
	}

	// 注册页面

	@RequestMapping("/register")
	public String register() {
		return "/register";
	}

	// 理赔页面
	@RequestMapping("/configure")
	public String configure() {
		return "/configure";
	}
	
	// 员工页面
	@RequestMapping("/admin")
	public String admin() {
		if(session.getAttribute("username") == null){
			return "login";
		}
		return "/admin";
	}

	// admin登陆页面
	@RequestMapping("/adminlogin")
	public String adminlogin() {
		return "/adminLogin";
	}

	// admin登陆页面
	@RequestMapping("/doctorLogin")
	public String doctorLogin() {
		return "/doctorLogin";
	}

	// 登录方法
	@RequestMapping("/adddoctorlogin")
	public String adddoctorlogin(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		password = mdPassword(password, username);
		User user = new User(username, password);
		User userVerify = usermapper.getUser(username);
		while (username.equals(userVerify.getUserName()) && password.equals(userVerify.getPassword())) {
			return "medicalCare";
		}
		return "adddoctorlogin";
	}
	
	// 登录方法
	@RequestMapping("/addlogin")
	public String login(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		password = mdPassword(password, username);
		User user = new User(username, password);
		User userVerify = usermapper.getUser(username);
		System.out.println(username+password);
		while (username.equals(userVerify.getUserName()) && password.equals(userVerify.getPassword())) {
			// 设置session
//			HttpSession session = request.getSession(); 
//			  UUID uid = (UUID) session.getAttribute("uid"); 
//			  if (uid == null) { 
//			    uid = UUID.randomUUID(); 
//			  } 
			  session.setAttribute("username", username);
			  System.out.println(session.getAttribute("username")+"123123123123");
			return "index";
		}
		return "login";
	}
	
	//退出登录
	@RequestMapping("/logout")
//	@ResponseBody
	public String logout(HttpSession session){
		System.out.println(session.getAttribute("username"));
		session.invalidate();
		return "login";
	}

	// 员工登录方法
	@RequestMapping("/addadminlogin")
	public String adminlogin(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		password = mdPassword(password, username);
		User user = new User(username, password);
		User userVerify = usermapper.getUser(username);
		while (username.equals(userVerify.getUserName()) && password.equals(userVerify.getPassword())) {
			session.setAttribute("username", username);
			return "admin";
		}
		return "adminlogin";
	}

	// 注册方法
	@RequestMapping(value = "/addregister", method = RequestMethod.POST)
	@ResponseBody
	public String register(String username,String password,String password2) {
//		String msg = "";
		User userVerify = usermapper.getUser(username);
//		用户名注册检验
		if (username == "" || password == "" || password2 == "") {
			return "用户名、密码不能为空";
		}else if (userVerify != null) {
			return "用户名已存在";
		} else if (!(password.equals(password2))) {
			return "密码不一致";
		} else {
			password = mdPassword(password, username);
			User user = new User(username, password);
			usermapper.insert(user);
			return "success";
		}
	}

	// 读取order数据存储
	// @RequestMapping("/saveMedicalCare")
	// public String medicalCare(HttpServletRequest request) {
	// String kind=request.getParameter("kind");
	// String range=request.getParameter("range");
	// String payment=request.getParameter("payment");
	// String patientName=request.getParameter("patientName");
	//
	// MedicalCare medicalcare=new MedicalCare(kind,range,payment,patientName);
	// madicalcaremapper.insertomedical(medicalcare);;
	//
	// return "settlement";
	// }

	//madicalCare数据存储
	//读取order数据存储
	@RequestMapping(value = "/orderInfo", method = RequestMethod.POST)
	@ResponseBody
	public String contract(String orderstartDate,String orderendDate,String city,String orderName,String certifitype
			,String certifiNumber,String sex,String birthday,String phonenumber,String email,String orderedName
			,String relationship,String certifiType2,String certifiNumber2,String birthday2,String sex2,String phoneNumber2) {
//		String orderstartDate=request.getParameter("orderstartDate");
//		String orderendDate=request.getParameter("orderendDate");
//		String city=request.getParameter("city");
//		String orderName=request.getParameter("orderName");
//		String certifitype=request.getParameter("certifitype");
//		String certifiNumber=request.getParameter("certifiNumber");
//		String sex=request.getParameter("sex");
//		String birthday=request.getParameter("birthday");
//		String phonenumber=request.getParameter("phonenumber");
//		String email=request.getParameter("email");
//		String orderedName=request.getParameter("orderedName");
//		String relationship=request.getParameter("relationship");
//		String certifiType2=request.getParameter("certifiType2");
//		String certifiNumber2=request.getParameter("certifiNumber2");
//		String birthday2=request.getParameter("birthday2");
//		String sex2=request.getParameter("sex2");
//		String phoneNumber2=request.getParameter("phoneNumber2");
//		System.out.println(certifitype+orderName);
		OrderInfo orderinfo=new OrderInfo(orderstartDate,orderendDate,city,orderName,certifitype,certifiNumber,sex,birthday,phonenumber,email);
		ordercontractmapper.insertorderinfo(orderinfo);
		OrderedInfo orderedinfo=new OrderedInfo(orderedName,relationship,certifiType2,certifiNumber2,birthday2,sex2,phoneNumber2);
		ordercontractmapper.insertorderedinfo(orderedinfo);
		return "contract";
	}

	//读取投保人与被投保人信息
	//读取order数据存储
	@RequestMapping(value = "/detailOrder", method = RequestMethod.POST)
	@ResponseBody
	public String order(String kind1,String range1,String customQuotation1,String kind2,String range2,String customQuotation2,String kind3,String range3,String customQuotation3,String kind4,String range4,String customQuotation4,
					String kind5,String range5,String customQuotation5,String kind6,String range6,String customQuotation6,
					String kind7,String range7,String customQuotation7,String kind8,String range8,String customQuotation8,
					String date,String totalValue){
//						String kind1=request.getParameter("kind1");
//						String range1=request.getParameter("range1");  
//						String customQuotation1=request.getParameter("customQuotation1");
//						String kind2=request.getParameter("kind1");
//						String range2=request.getParameter("range2");
//						String customQuotation2=request.getParameter("customQuotation2");
//						String kind3=request.getParameter("kind3");
//						String range3=request.getParameter("range3"); 
//						String customQuotation3=request.getParameter("customQuotation3");
//						String kind4=request.getParameter("kind3");
//						String range4=request.getParameter("range4");
//						String customQuotation4=request.getParameter("customQuotation4");
//						String kind5=request.getParameter("kind5");
//						String range5=request.getParameter("range5");
//						String customQuotation5=request.getParameter("customQuotation5");
//						String kind6=request.getParameter("kind5");
//						String range6=request.getParameter("range6");
//						String customQuotation6=request.getParameter("customQuotation6");
//						String kind7=request.getParameter("kind5");
//						String range7=request.getParameter("range7"); 
//						String customQuotation7=request.getParameter("customQuotation7");
//						String kind8=request.getParameter("kind5");
//						String range8=request.getParameter("range8");
//						String customQuotation8=request.getParameter("customQuotation8");
//						String date=request.getParameter("date");
//						String totalValue=request.getParameter("totalValue");
//				System.out.println(kind1);
		if (session.getAttribute("username") != null) {
			Order order=new Order(kind1,range1,customQuotation1,kind2,range2,customQuotation2,kind3,range3,customQuotation3,kind4,range4,customQuotation4,kind5,range5,customQuotation5,kind6,range6,customQuotation6,kind7,range7,customQuotation7,kind8,range8,customQuotation8,date,totalValue);
		    ordermapper.insertOrder(order);
		    return "orderContract";
		}  else {
			return "fail";
		}
		
//			    		String resMsgJson = "";
//			            Json_fabric message=new Json_fabric();
//			            message.setName("a");
//			            message.setNamevalue("200");
//			            message.setMoney("b");
//			            message.setMoneyvalue("400");
//			            
//			            resMsgJson=JacksonUtil.toJSon(message);
//			            Json_fabric messageToBase=JacksonUtil.readValue(resMsgJson, Json_fabric.class);
//			            System.out.println("我在service"+"======"+resMsgJson+"========");
//			            mainTest maintest = new mainTest();
//			            maintest.getInformation(resMsgJson);
//			            System.out.println("=============="+session.getAttribute("username").toString()+"===============");
//	    String check = session.getAttribute("username").toString();
//		return "success";
	}

	// 密码加密
	private static String mdPassword(String password, String username) {
		String md = "";
		try {
			String passw = "{dhjdfu34i34u34-zmew8732dfhjd-";
			String usern = "dfhjdf8347sdhxcye-ehjcbeww34}";
			String pass = password + passw + username + usern;
			md = md5(pass);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return md;
	}

	private static String md5(String str) {
		try {
			byte[] returnByte = str.getBytes("utf-8");
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			returnByte = md5.digest(str.getBytes("utf-8"));
			StringBuffer buf = new StringBuffer("");
			int i;
			for (int offset = 0; offset < returnByte.length; offset++) {
				i = returnByte[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			str = buf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}
	
	//数据查询（用户信息、合同信息）
		@RequestMapping(value = "/checkDate", method = RequestMethod.POST)
		@ResponseBody
		public String checkDate(String searchName,String certifiNumber) {
			String msg = "";
			String userName = session.getAttribute("username").toString();
			String queryID=certifiNumber+searchName;
			List<Contract> contract = contractmapper.getContractOrder(userName);
			String value= JacksonUtil.toJSon(contract);
		   mainTest.getInformation("query",queryID,value);
			return "hhh";	
		}
	//数据查询（用户信息、合同信息）
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	@ResponseBody
	public List<Contract> userToJson(String searchName,String certifiNumber) {
		String msg = "";
//		User user = usermapper.getUser(name);
		String userName = session.getAttribute("username").toString();
//		System.out.println(searchName+certifiNumber+userName);
//		String orderedName = searchName;
//		List<Contract> contract = contractmapper.getContract(orderedName,certifiNumber,userName);
//		msg = JacksonUtil.toJSon(contract);
//		for (Contract contract : getcontract) { 
//		List<Contract> list=new ArrayList<Contract>();  
		List<Contract> contract = contractmapper.getContractOrder(userName);
		for (int i = 0; i < contract.size(); i++) {
			msg = JacksonUtil.toJSon(contract.get(i));
		    System.out.println(msg);
		    System.out.println(contract+"xcg");
		}
		
//			System.out.println(contract);
//			}
//		System.out.println(name);
//		System.out.println(msg);
		return contract;
	}
	
	//员工查询所有合同
	@RequestMapping(value = "search", method = RequestMethod.POST)
	@ResponseBody
	public List<Contract> userContract(HttpSession session){
//		String userName = session.getAttribute("username").toString();
		List<Contract> allContract = contractmapper.getAll();
		return allContract;
	}

	//员工查询具体合同
	@RequestMapping(value = "detailSearch", method = RequestMethod.POST)
	@ResponseBody
	public List<Contract> userContract(String name,String number){
		String userName = session.getAttribute("username").toString();
		List<Contract> searchContract = contractmapper.getContract(name, number, userName);
		return searchContract;
	}
	
	//员工查询具体合同
	@RequestMapping(value = "apply", method = RequestMethod.POST)
	@ResponseBody
	public List<Contract> apply(String orderedName,String certifiNumber){
//		String userName = session.getAttribute("username").toString();
		System.out.println(orderedName+certifiNumber);
		String contractId = "contract";
		List<Contract> applyContract = contractmapper.getContract(orderedName, certifiNumber, contractId);
		return applyContract;
	}
}

