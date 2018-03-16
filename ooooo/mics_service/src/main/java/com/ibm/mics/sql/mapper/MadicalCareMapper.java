package com.ibm.mics.sql.mapper;

import org.apache.ibatis.annotations.*;

import com.ibm.mics.entity.util.*;

public interface MadicalCareMapper {
	
	@Insert("INSERT INTO medicalcare(kind,fanwei,payment,patientName"
			+ ",certifyType3,certifiNumber3,age,sex3,zhuyuan,type,visitTime,miaoshu,history) "
			+ "VALUES(#{medicalcare.kind},#{medicalcare.range},#{medicalcare.payment},#{medicalcare.patientName},#{medicalcare.certifyType3},"
			+ "#{medicalcare.certifiNumber3},#{medicalcare.age},#{medicalcare.sex3},#{medicalcare.zhuyuan},#{medicalcare.type},"
			+ "#{medicalcare.visitTime},#{medicalcare.describe},#{medicalcare.history})")
	void insertmedical(@Param("medicalcare") MedicalCare medicalcare);

}
 