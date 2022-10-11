// my token +

uint256 public num;
uint256 public constant FEE = 40;

function incrementNum() public{

    //address recipient, uint256 amount
    transfer(adress(this), FEE * 10 **decimals());
    num++;
}