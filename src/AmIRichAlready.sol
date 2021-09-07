pragma solidity >=0.4.16 <0.9.0;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
}

contract AmIRichAlready {

	// Declare original variables
    IERC20 private tokenContract;
    uint public richness = 1000000 * 10 ** 18;
	
	// Declare root contract variables
	bool solved;    // Boolean to denote if contract is solved.
    address payable owner;  // Owner of the contract, first this is the sponser.
    uint expiry;        // Get the time when the contract expires.

    constructor (IERC20 _tokenContract) public {
        tokenContract = _tokenContract;
    }

    function check() public view returns (bool) {
        uint balance = tokenContract.balanceOf(msg.sender);
        return balance > richness;
    }

    // IS THIS NEEDED???
    function setRichness(uint256 _richness) public {
      richness = _richness;
    }
}
