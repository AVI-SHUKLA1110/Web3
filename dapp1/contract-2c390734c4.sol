// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract MoodDiary {
    string mood;

    function setMood(string memory _mood) public {
        mood = _mood;
    }

    function getMood() public view returns (string memory) {
        return mood;
    }
}