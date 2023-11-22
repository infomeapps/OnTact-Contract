// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "ERC20.sol";

contract OnTact is ERC20 {
    constructor(address unlock00, address unlock01, address unlock02, address unlock03, address unlock04, address unlock05, address unlock06) ERC20("OnTact", "ONTACT") {
        _mint(unlock00, 18000000000000000);
        _mint(unlock01, 27000000000000000);
        _mint(unlock02, 45000000000000000);
        _mint(unlock03, 159000000000000000);
        _mint(unlock04, 3000000000000000);
        _mint(unlock05, 30000000000000000);
        _mint(unlock06, 18000000000000000);
    }
}
	
	
	
	
	
