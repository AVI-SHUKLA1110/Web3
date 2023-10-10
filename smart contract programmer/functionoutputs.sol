//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract multipleOutputs {
      function manyoutputs() public pure returns(uint, bool) {
           return (1, true);
      }  
      function namedparam() public pure returns(uint x, bool b) {
        return (1, true);
      }
      function assigned() public pure returns (uint x, bool b){
        x = 1 ;
        b = true;
      }
}
