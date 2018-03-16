///*
// *  Copyright 2016, 2017 DTCC, Fujitsu Australia Software Technology, IBM - All Rights Reserved.
// *
// *  Licensed under the Apache License, Version 2.0 (the "License");
// *  you may not use this file except in compliance with the License.
// *  You may obtain a copy of the License at
// *    http://www.apache.org/licenses/LICENSE-2.0
// *  Unless required by applicable law or agreed to in writing, software
// *  distributed under the License is distributed on an "AS IS" BASIS,
// *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// *  See the License for the specific language governing permissions and
// *  limitations under the License.
// */
//
//package cn.mics.brank.sdk;
//
//import java.util.Scanner;
//
//import org.hyperledger.fabric.sdk.Channel;
//
//
//
///**
// * Test end to end scenario
// */
//public class Router {
//	//Channel channel;
//	final static First first1=new First();
//	static Channel channel;
//public static void routeMethods(String methodName) throws Exception {
//	 switch(methodName) {
//	   case "setup": {
//		   first1.checkConfig(); 
//		   Out.out("23333333"+first1.fooChannel);
//		   channel=first1.setup();
//		   first1.clearConfig();
//		   Out.out("33332222"+first1.fooChannel);
//		   break;
//	   }
//	   case "invoke": {
//		   Scanner sb = new Scanner(System.in);
//   		String contractID=" ";
//   		Out.out("please input contractID:");
//   		contractID = (String)sb.nextLine();  
//		   first1.invokeapplication(channel,contractID);
//		   break;
//	   }
//	   case "query": {
//		   first1.invokeapplication(channel,"22222");
//		   first1.queryapplication(channel);
//		   break;
//	   }
//	 }
//	    
//	
//}
//	
//	
//	
//	
//
//}
