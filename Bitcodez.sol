pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Bitcodez is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Bitcodez(address _owner)  UpgradeableToken(_owner) {
    name = "Bitcodez";
    symbol = "BTZ";
    totalSupply = 690000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}