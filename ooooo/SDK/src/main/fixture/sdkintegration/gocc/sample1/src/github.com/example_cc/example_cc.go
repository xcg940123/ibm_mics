/*
Copyright IBM Corp. 2016 All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

		 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package main

import (
	"fmt"
	"strconv"
	"encoding/json"

	"github.com/hyperledger/fabric/core/chaincode/shim"
	pb "github.com/hyperledger/fabric/protos/peer"
)

// SimpleChaincode example simple Chaincode implementation
type SimpleChaincode struct {
}

type  Contract struct{
    kind1 string `json:"kind1"`//="一般意外"             
    range1 string //= "意外身故"
    customQuotation1 string `json："customQuotation1"` 
    kind2 string `json："kind2"`//= "一般意外" 
    range2 string `json："range2"`//= "意外医疗"
    customQuotation2 string `json："customQuotation2"`
    kind3 string `json："kind3"`//= "津贴及车费"
    range3 string `json："range3"`//= "住院误工津贴"
    customQuotation3 string `json："customQuotation3"`
    kind4 string `json："kind4"`//= "津贴及车费"
    range4 string `json："range4"`//= "救护车费用报销"
    customQuotation4 string `json："customQuotation4"`
    kind5 string `json："kind5`//= "交通意外"
    range5 string `json："range5"`//= "飞机意外身故、伤残"
    customQuotation5 string `json："customQuotation5"`
    kind6 string `json："kind6`//= "交通意外"
    range6 string `json："range6"`//= "火车意外身故、伤残"
    customQuotation6 string `json："customQuotation6"`
    kind7 string `json："kind7"`//= "交通意外"
    range7 string `json："range7"`//= "船舶意外身故、伤残"
    customQuotation7 string `json："customQuotation7"`
    kind8 string `json："kind8"`//= "交通意外"
    range8 string `json："range8"`//= "汽车意外身故、伤残"
    customQuotation8 string `json："customQuotation8"`
    date string `json："date"`
    totalVlue string `json："totalVlue"`
    orderstartDate string `json："orderstartDate"`
    orderendDate string `json："orderendDate"`
    orderName string `json："orderName"`
    certifiType string `json："certifiType"`
    certifiTypeNumber string `json："certifiTypeNumber"`
    sex string `json："sex"`
    birthday string `json："birthday"`
    phoneNumber string `json："phoneNumber"`
    email string `json："email"`
    city string `json："city"`
    orderedName string `json："orderedName"`
    relationship string `json："relationship"`
    certifiType2 string `json："certifiType2"`
    certifiNumber2 string `json："certifiNumber2"`
    birthday2 string `json："birthday2"`
    sex2 string `json："sex2"`
    phoneNumber2 string `json："phoneNumber2"`
}


type  Medicare struct{
    patientName string `json："patientName"`
    certifyType3 string `json："certifyType3"`
    certifiNumber3 string `json："certifiNumber3"`
    payment string `json："payment`
    kind string `json："kind"`
    fanwei string `json："range"`//range是go的关键字
    age string `json："age"`
    sex3 string `json："sex3"`
    zhuyuan string `json："zhuyuan"`
    leixing string `json："type"`    //type是go的关键字
    visitTime string `json："visitTime"`
    describe string `json："describe"`
    history string `json："history"`
}

// Init initializes the chaincode state
func (t *SimpleChaincode) Init(stub shim.ChaincodeStubInterface) pb.Response {
	fmt.Println("########### example_cc Init ###########")
	/*_,args := stub.GetFunctionAndParameters()
      var  contractID , medicareID string   //人名加相关数据名称
	var contractValue , medicareValue string
	var err error

if len(args) != 5 {
		return shim.Error("Incorrect number of arguments. Expecting 4")
	}

    medicareID = args[1]
    medicareValue = args[2]
    contractID = args[3]
    contractValue = args[4]
	if err != nil {
		return shim.Error("Expecting integer value for asset holding")
	}
	
	fmt.Printf("medicareID=%s,medicareValue = %s,contractID=%s,contractValue = %s\n",medicareID,medicareValue,contractID, contractValue)

	// Write the state to the ledger
      err = stub.PutState(medicareID, []byte(medicareValue))
	if err != nil {
		return shim.Error(err.Error())
	}


	err = stub.PutState(contractID, []byte(contractValue))
	if err != nil {
		return shim.Error(err.Error())
	}

	if transientMap, err := stub.GetTransient(); err == nil {
		if transientData, ok := transientMap["result"]; ok {
			return shim.Success(transientData)
		}
	}*/

	return shim.Success(nil)

}

// Invoke makes payment of X units from A to B
func (t *SimpleChaincode) Invoke(stub shim.ChaincodeStubInterface) pb.Response {
	fmt.Println("########### example_cc Invoke ###########")
	function, args := stub.GetFunctionAndParameters()

	if function != "invoke" {
		return shim.Error("Unknown function call")
	}

	if len(args) < 2 {
		return shim.Error("Incorrect number of arguments. Expecting at least 2")
	}

	if args[0] == "query" {
		// queries an entity state
		return t.query(stub, args)
	}
	
	if args[0] == "check" {
		// Deletes an entity from its state
		return t.check(stub, args)
	}

	if args[0] == "save" {
		// Deletes an entity from its state
		return t.save(stub, args)
	}

	return shim.Error("Unknown action, check the first argument, must be one of 'query', 'check', or 'save'")
}

// Query callback representing the query of a chaincode
func (t *SimpleChaincode) query(stub shim.ChaincodeStubInterface, args []string) pb.Response {
	fmt.Println("########### example_cc query ###########")
	var contractID,medicareID string // Entities
      //var contractValue,medicareValue []byte
	var err error

	if len(args) != 3 {
		return shim.Error("Incorrect number of arguments. Expecting name of the person to query")
	}

	contractID = args[1]   //人名加相关数据名称
      medicareID = args[2]

	// Get the state from the ledger
	contractValueBytes, err := stub.GetState(contractID)
	if err != nil {
		jsonResp := "{\"Error\":\"Failed to get state for " + contractID + "\"}"
		return shim.Error(jsonResp)
	}

	if contractValueBytes == nil {
		jsonResp := "{\"Error\":\"Nil amount for youcuohlls" + contractID + "\"}"
		return shim.Error(jsonResp)
	}
      medicareValueBytes, err := stub.GetState(medicareID)
	if err != nil {
		jsonResp := "{\"Error\":\"Failed to get state for " + medicareID + "\"}"
		return shim.Error(jsonResp)
	}

	if medicareValueBytes == nil {
		jsonResp := "{\"Error\":\"Nil amount for " + medicareID + "\"}"
		return shim.Error(jsonResp)
	}


	jsonResp1 := "{\"Name\":\"" + contractID + "\",\"Amount\":\"" + string(contractValueBytes) + "\"}"
	jsonResp2 := "{\"Name\":\"" + medicareID + "\",\"Amount\":\"" + string(medicareValueBytes) + "\"}"
	fmt.Printf("Query Response:value1=%s,value2=%s\n", jsonResp1,jsonResp2)
	return shim.Success(nil)
}

func (t *SimpleChaincode) check(stub shim.ChaincodeStubInterface, args []string) pb.Response {

	fmt.Println("########### example_cc check ###########")

	var contractID,medicareID string   //人名加相关数据名称
	var err error


	if len(args) != 3 {
		return shim.Error("Incorrect number of arguments. Expecting 4, function followed by 2 names and 1 value")
	}

    contractID = args[1]
    medicareID = args[2]

    // Get the state from the ledger
	// TODO: will be nice to have a GetAllState call to ledger
var contractValue []byte
	contractValue, err = stub.GetState(contractID)
	if err != nil {
		return shim.Error("Failed to get state")
	}
var medicareValue []byte
	medicareValue, err = stub.GetState(medicareID)
	if err != nil {
		return shim.Error("Failed to get state")
	}

	var contract Contract
	err = json.Unmarshal(contractValue, &contract)
	if err != nil {
		return shim.Error("Failed to Unmarshal contractValue.json")
	}

	var medicare Medicare
	err = json.Unmarshal(medicareValue, &medicare)
	if err != nil {
		return shim.Error("Failed to Unmarshal medicareValue.json")
	}
	
	//比较相关的数据是否符合理赔条约
	if contract.orderedName!=medicare.patientName  {
		return shim.Error("被保人姓名与就医人姓名不符")
	}

	if contract.certifiType2!= medicare.certifyType3  {
		return shim.Error("被保人证件类型与就医人证件类型不符")
	}

   if contract.certifiNumber2!=medicare.certifiNumber3  {
		return shim.Error("被保人证件号与就医人证件号不符")
	}

   if contract.sex2!=medicare.sex3  {
		return shim.Error("被保人性别与就医人性别不符")
	}
//string时间数据转换为int时间数据
        var orderstartDate,orderendDate,visitTime int
	orderstartDate, _ = strconv.Atoi(contract.orderstartDate)
	orderendDate, _ = strconv.Atoi(contract.orderendDate)
	visitTime, _ = strconv.Atoi(medicare.visitTime)

   if orderstartDate<=visitTime  {
   	  if orderendDate>=visitTime {
   	  	fmt.Printf("符合投保时间范围")
   	  }else{
   	  	return shim.Error("不在投保时间范围内")
   	  }
	} else {
		return shim.Error("不在投保时间范围内")
	}

  switch {
      case contract.kind1==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind1)     
      case contract.kind2==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind2)     
      case contract.kind3==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind3)     
      case contract.kind4==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind4)
      case contract.kind5==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind5)
      case contract.kind6==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind6)
      case contract.kind7==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind7)
      case contract.kind8==medicare.kind :
         fmt.Printf("符合%s类型的投保条件", contract.kind8)
      default:
         return shim.Error("用户未投保")
   }

   switch {
      case contract.range1==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range1)     
      case contract.range2==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range2)     
      case contract.range3==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range3)     
      case contract.range4==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range4)
      case contract.range5==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range5)
      case contract.range6==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range6)
      case contract.range7==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range7)
      case contract.range8==medicare.fanwei :
         fmt.Printf("符合%s类型的投保条件", contract.range8)
      default:
         return shim.Error("用户未投保")
   }
	return shim.Success(nil)
}

func (t *SimpleChaincode) save(stub shim.ChaincodeStubInterface,args []string) pb.Response {

fmt.Println("########### example_cc save ###########")
	var  contractID , medicareID string   //人名加相关数据名称
	var contractValue , medicareValue string
	var err error
     if len(args) != 5 {
		return shim.Error("Incorrect number of arguments. Expecting 4")
	}

    medicareID = args[1]
    medicareValue = args[2]
    contractID = args[3]
    contractValue = args[4]
	fmt.Printf("medicareID=%s,medicareValue = %s,contractID=%s,contractValue = %s\n",medicareID,medicareValue,contractID, contractValue)

	// Write the state to the ledger
      err = stub.PutState(medicareID, []byte(medicareValue))
	if err != nil {
		return shim.Error(err.Error())
	}


	err = stub.PutState(contractID, []byte(contractValue))
	if err != nil {
		return shim.Error(err.Error())
	}

	if transientMap, err := stub.GetTransient(); err == nil {
		if transientData, ok := transientMap["result"]; ok {
			return shim.Success(transientData)
		}
	}

	return shim.Success(nil)
	
}

func main() {
	err := shim.Start(new(SimpleChaincode))
	if err != nil {
		fmt.Printf("Error starting Simple chaincode: %s", err)
	}
}
