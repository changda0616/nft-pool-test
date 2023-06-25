// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {EnumNft, NftPool, Contest} from "../src/NFTPool.sol";

contract NFTPoolTest is Test {
    Contest public contest;

    /**
     * EXPLOIT START *
     */
    constructor() {
        contest = new Contest();
    }

    function testAttack() public {
        assertEq(contest.solve(), true);
    }


    /**
     * EXPLOIT END *
     */
}
