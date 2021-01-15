pragma solidity >=0.5.0 ;
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract MyDeFiProject {
    IERC20 mDai;
    IERC20 kovanDai;

    constructor (address _mDaiAddress, address _kovanDaiAddress) public {
    mDai = IERC20(_mDaiAddress);
    kovanDai = IERC20(_kovanDaiAddress);
    }

    function transferMockDai (address _recipient, uint _amount) public {
        mDai.transfer(_recipient, _amount);
    }

    function transferKovanDai (address _recipient, uint _amount) public {
        kovanDai.transfer(_recipient, _amount);
    }

}
