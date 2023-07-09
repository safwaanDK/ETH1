// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExceptionHandling {
    function divide(uint256 dividend, uint256 divisor) external pure returns (uint256) {
        require(divisor != 0, "Division by zero is not allowed");
        
        uint256 quotient = dividend / divisor;
        
        assert(quotient * divisor == dividend);
        
        return quotient;
    }

    event AgeRequirementMet(address indexed account, uint256 age);

    function checkAge(uint256 age) external {
        require(age >= 18, "You must be at least 18 years old");
        emit AgeRequirementMet(msg.sender, age);
    }
    
    function withdraw(uint256 amount) external view {
        require(amount > 0, "Amount must be greater than zero");
        require(address(this).balance >= amount, "Insufficient balance");
    
        // Revert the transaction without transferring any funds
        revert("Withdrawal is currently disabled");
    }
}
