pragma solidity >=0.5.0 ;
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract MyDeFiProject {
    IERC20 mDai;

    constructor (address _daiAddress) public {
    mDai = IERC20(_daiAddress);
    }

    function transferMockDai (address _recipient, uint _amount) public {
        mDai.transfer(_recipient, _amount);
    }
}
