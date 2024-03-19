// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample {
    event FallbackRecieved(address sender, uint amount);
    // Event to log payment recived 
    event PaymentRecieved(address payer, uint256 amount);

    // Fallback function
    fallback() external payable { 
            emit FallbackRecieved(msg.sender, msg.value);
    }

    // Function to receive Ether
    receive() external payable { 
        emit PaymentRecieved(msg.sender, msg.value);
    }

}



//Ryan Joshua F. Milan
//Comment
//The `FallbackExample` contract showcases how fallback functions in Solidity can efficiently handle incoming Ether transactions. 
//It ensures that Ether sent to the contract without a designated function call is appropriately captured and logged, 
//promoting transparency and ease of use in Ethereum smart contracts.
