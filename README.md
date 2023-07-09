# ExceptionHandling Contract

The ExceptionHandling contract is a Solidity smart contract that demonstrates exception handling and control flow using the `require`, `assert`, and `revert` statements. It provides functions for division, age verification, and fund withdrawal.

## Functions

### divide

```solidity
function divide(uint256 dividend, uint256 divisor) external pure returns (uint256)
```

The `divide` function takes two parameters, `dividend` and `divisor`, and returns the quotient of their division. It ensures that the divisor is not zero using the `require` statement. It calculates the quotient and verifies its correctness by asserting that the product of the quotient and the divisor equals the dividend. Finally, it returns the quotient.

### checkAge

```solidity
function checkAge(uint256 age) external
```

The `checkAge` function takes an `age` parameter and emits the `AgeRequirementMet` event if the age is greater than or equal to 18. It uses the `require` statement to enforce the age requirement.

### withdraw

```solidity
function withdraw(uint256 amount) external view
```

The `withdraw` function is currently disabled and reverts any transaction attempting to withdraw funds. It verifies that the withdrawal amount is greater than zero and checks if the contract has a sufficient balance to cover the withdrawal. However, instead of transferring funds, it uses the `revert` statement to revert the transaction with the message "Withdrawal is currently disabled." This prevents any transfer of funds and stops the function execution abruptly.

## Events

### AgeRequirementMet

```solidity
event AgeRequirementMet(address indexed account, uint256 age);
```

The `AgeRequirementMet` event is emitted in the `checkAge` function when the age requirement is met. It contains the account address and the age as indexed parameters.

## License

This contract is licensed under the MIT License. You can find the license text in the contract's source code file.

## Usage

To use this contract, you can deploy it to a compatible Ethereum network, such as the Ethereum mainnet or a testnet, using a Solidity development environment like Remix or Truffle. Once deployed, you can interact with the contract by calling its functions using a compatible Ethereum wallet or by writing scripts in Solidity or other supported programming languages.

Please note that the `withdraw` function is currently disabled and will always revert any transaction attempting to withdraw funds. You can modify the contract code to enable fund withdrawals based on your specific requirements.

## Development

To contribute to the development of this contract or make modifications, you can clone this repository and open the contract file in a Solidity development environment. You can run tests, write additional functions, or enhance the existing functionality based on your needs.

Make sure to follow best practices for Solidity development, including testing thoroughly and reviewing your changes before deploying them to production networks.

## Disclaimer

This contract is provided as-is with no warranties or guarantees. It is your responsibility to review and understand the code before deploying it. Use the contract at your own risk.

## Credits

The ExceptionHandling contract is created by SAFWAAN/safwaanDK. It is licensed under the MIT License.
