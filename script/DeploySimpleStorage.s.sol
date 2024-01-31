// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;


import {Script} from "forge-std/Script.sol";  //for foundry to know that this is a script
import {SimpleStorage} from "../src/SimpleStorage.sol" ;// import the contract which is being deployed or tested;

contract DeploySimpleStorage is Script {

    function run() external returns (SimpleStorage)
    {
        //vm is a special keyword in forge std library
        vm.startBroadcast(); //will be send to the RPC 
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;

    }

}