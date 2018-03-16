package com.ibm.mics.entity.util;

public class MedicalCare {
	String kind;
	String range;
	String payment;
	String patientName;
	String certifyType3;
	String certifiNumber3;
	String age;
	String sex3;
	String zhuyuan;
	String type;
	String visitTime;
	String describe;
	String history;
	
	public MedicalCare(String certifyType3,String certifiNumber3,String age,String sex3,String zhuyuan,String type,String visitTime,String describe,
			String kind,String range,String history,String payment, String patientName) {
		this.kind = kind;
		this.range = range;
		this.payment = payment;
		this.patientName = patientName;
		this.age=age;
		this.certifyType3=certifyType3;
		this.certifiNumber3=certifiNumber3;
		this.sex3=sex3;
		this.zhuyuan=zhuyuan;
		this.type=type;
		this.visitTime=visitTime;
	   this.history=history;
		this.describe=describe;
	}
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getRange() {
		return range;
	}
	public void setRange(String range) {
		this.range = range;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getCertifyType3() {
		return certifyType3;
	}

	public void setCertifyType3(String certifyType3) {
		this.certifyType3 = certifyType3;
	}

	public String getCertifiNumber3() {
		return certifiNumber3;
	}

	public void setCertifiNumber3(String certifiNumber3) {
		this.certifiNumber3 = certifiNumber3;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSex3() {
		return sex3;
	}

	public void setSex3(String sex3) {
		this.sex3 = sex3;
	}

	public String getZhuyuan() {
		return zhuyuan;
	}

	public void setZhuyuan(String zhuyuan) {
		this.zhuyuan = zhuyuan;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getVisitTime() {
		return visitTime;
	}

	public void setVisitTime(String visitTime) {
		this.visitTime = visitTime;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}
	

}
