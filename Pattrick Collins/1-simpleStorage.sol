//SPDX-License-Identifier:MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 myfavouriteNumber; //state variable
 
 struct Person {
     uint256 favouriteNumber;
     string name;
 }

 Person[] public Mypeoples;
 //this defines that each element in the array Mypeoples is of the form 'People'.


function store(uint256 _favouriteNumber) public {
    myfavouriteNumber = _favouriteNumber;
}

//view - can not transact/update to a state variable but can read from it
//pure - cannnot neither update nor read from a state variable

function retrieve() public view returns(uint256) {
    return myfavouriteNumber;
}
//function to add People to our array 'Mypeoples'
function addPerson(string memory name, uint256 favouriteNumber) public {
     Mypeoples.push(Person(favouriteNumber, name));

    //Person memory newPerson = Person(favouriteNumber, name);
//struct array and mapping -> memory
//string - array of bytes so -> calldata

}












}