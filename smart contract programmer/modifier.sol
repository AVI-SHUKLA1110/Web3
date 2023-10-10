//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract funcModifier {
    bool public paused;
    uint public count;

    function setPauseValue(bool _pause) external {
        paused = _pause;
    }
    modifier whenNotPaused() {
        require(!paused, "pause");
        _;
    }
    function inc() external whenNotPaused {
        //require(!paused, "pause");
        count += 1;
    }
    function dec() external whenNotPaused {
        //require(!paused, "pause");
        count += 1;
    }
//now this `require` statement can be converted into a 'modifier' which saves effort.
}
