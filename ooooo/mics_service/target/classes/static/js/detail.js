$(document).ready(function(){	
	 var getData = localStorage.getItem("合同详情");//取回变量  
	 getData = JSON.parse(getData);//把字符串转换成JSON对象
	 $("#hhhh").text(getData.orderedName);
	 console.log(getData);
})