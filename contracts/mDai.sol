pragma solidity >=0.5.0;
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract mDai is ERC20 {
    constructor () ERC20 ('mDai Stablecoin', 'mDAI') public{ }

    function faucet (address _recipient, uint _amount) external{
        _mint(_recipient, _amount);
    }
}