package cn.mics.brank.main.test;

import java.net.MalformedURLException;
import java.util.Collection;
import org.hyperledger.fabric.sdk.Channel;

import cn.mics.brank.fabric.entity.SampleOrg;
import cn.mics.brank.sdk.First;




public class mainTest {
	static First first=new First();
	static Channel channel;
	private static Collection<SampleOrg> testSampleOrgs;
	public static void getInformation(String methodName,String ID,String info) {

		 switch(methodName) {
		   case "invoke": { 
			   first.invokeapplication(channel,ID,info);
			   break;
		   }
		   case "query": {
			   first.invokeapplication(channel,"22222","45678");
			   first.queryapplication(channel,ID);
			   first.queryapplication(channel,ID);
			   break;
		   }
		 }
}
	public static void getInformation(String methodName,String ID,String info,String checkID) {
		   first.invokeapplication(channel,"22222","45678");
		   first.checkapplication(channel,ID,checkID);
		   first.checkapplication(channel,ID,checkID);
	}
	
	public final static void ExcuteFirst() {
		try {
			testSampleOrgs=first.checkConfig();
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException
				| MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		channel=first.setup(testSampleOrgs);
		
		first.clearConfig();
	}
}
