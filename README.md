# Exception Handling Contract

This Solidity contract showcases exception handling techniques in Ethereum smart contracts. It includes functions for division, age verification, and fund withdrawal, along with appropriate exception handling mechanisms.

## Contract Details

- Solidity Version: ^0.8.0
- SPDX License: MIT

## Functions

### `divide`

```solidity
function divide(uint256 dividend, uint256 divisor) external pure returns (uint256)
```

This function performs division between two `uint256` numbers. It takes the `dividend` and `divisor` as parameters and returns the division quotient as a `uint256`. It includes the following exception handling:

- It throws an exception if the `divisor` is zero, preventing division by zero errors.

### `checkAge`

```solidity
function checkAge(uint256 age) external
```

This function verifies if an account holder's age meets the requirement. It takes the `age` as a parameter and emits the `AgeRequirementMet` event if the age is greater than or equal to 18. It includes the following exception handling:

- It throws an exception if the `age` is less than 18, ensuring that only users who meet the age requirement can proceed.

### `withdraw`

```solidity
function withdraw(uint256 amount) external
```

This function allows users to withdraw funds from the contract. It takes the `amount` to be withdrawn as a parameter. It includes the following exception handling:

- It throws an exception if the `amount` is zero or negative, preventing invalid withdrawals.
- It throws an exception if the contract's balance is insufficient to fulfill the withdrawal request.

## Events

### `AgeRequirementMet`

```solidity
event AgeRequirementMet(address indexed account, uint256 age)
```

This event is emitted when the `checkAge` function is called and the age requirement is met. It includes the following parameters:

- `account`: The address of the account that met the age requirement.
- `age`: The age of the account holder.

## License

This project is licensed under the terms of the MIT license. See [LICENSE](./LICENSE) for more information.

---
