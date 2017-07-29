pragma solidity ^0.4.4;

/* 
You will create a smart contract named Splitter whereby:

- there are 3 people: Alice, Bob and Carol
- we can see the balance of the Splitter contract on the web page
- whenever Alice sends ether to the contract, half of it goes to Bob and the other half to Carol
- we can see the balances of Alice, Bob and Carol on the web page
- we can send ether to it from the web page

Stretch goals:

- add a kill switch to the whole contract
- make the contract a utility that can be used by David, Emma and anybody with an address
- cover potentially bad input data

*/

contract Splitter {

    /*
     define state variables
    */ 
    address public owner;
    address[] public receivers; 
    uint public totalBalance;
    
    
    
    // ---  try to use structs after first completing with arrays ---
    // struct EthReceiverStruct {
    //     address receiverAddr;
    //     uint balance;
    // }
    
    // EthReceiverStruct[] public ethReceivers;
    
    function Splitter(){
        owner = msg.sender;

    }
    
    
    function getBalance() public returns (uint) {
        return totalBalance;
    }

    function distributeEther(address firstReceiver, address secondReceiver) payable returns(bool success) {
        if(msg.value == 0) throw;
        totalBalance += msg.value;
        
        // firstReceiver and secondReceiver passed in should be stored within an EthReceiverStruct
        // EthReceiverStruct memory newReceiver;
        // newReceiver[0].receiverAddr = firstReceiver;
        // newReceiver[1].receiverAddr = secondReceiver;
        // struct cannot be indexed? 
        
        
        if(msg.sender == owner){
          receivers[0] = firstReceiver;
          receivers[1] = secondReceiver;
            
          // send the funds
        }
        
        
    }

    
    
    
}