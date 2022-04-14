// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../stakeContract.sol";
import "./mocks/Token.sol";

contract StakeContractTest is DSTest {
    StakeContract public stakeContract;
    TestToken public token;
    function setUp() public {
    
        stakeContract = new StakeContract();
        token = new TestToken();


    }

    // function testExample() public {
    //     uint256 amount = 10e18;
    //     token.approve(address(stakeContract), amount);
    //     bool stakePassed = stakeContract.stake(amount, address(token));
    //     assertTrue(stakePassed);


    // }


     function testExample(uint8 amount) public {

        token.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(token));
        assertTrue(stakePassed);
    }
}

