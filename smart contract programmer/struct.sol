// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Structs {
    struct Car {
        string model;
        int  year;
        address owner;
    }
Car public car;     //creating a state variable of struct Car.
Car[] public cars;   //creating an array of struct Car.length;

mapping(address=>Car[]) public carsByOwner;

function examples() external {
    // 3 ways to use a struct 
    Car memory honda =Car("swift", 2010,msg.sender);

    Car memory audi =Car({model:"xx8",year:2015,owner:msg.sender});

    Car memory chevo;
      chevo.model = "lambo";
      chevo.year = 1980;
      chevo.owner = msg.sender;

   //pushing these values to the array 'cars'
    cars.push(honda);
    cars.push(audi);
    cars.push(chevo);

    //and what if i need to add a new struct after this -

    cars.push(Car("Ferrari",2025,msg.sender));

    Car storage _car = cars[0];
    _car.model;
    _car.owner;
    _car.year;
//! Note that if we need to now change the year for this struct - we need to first
//change the 'memory' to storage.

   _car.year = 1999;
   delete _car.owner;
   delete cars[1];
}








}


