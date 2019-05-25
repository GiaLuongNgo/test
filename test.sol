pragma solidity 0.5.1;

contract abstractexample{
    function GetValue() public view returns (uint);
    function SetValue(uint _value) public;
}

// abstract
contract example is abstractexample{
    uint private simpleInteger;
    function SetValue(uint _value) public {
        simpleInteger = _value;
    }
    function GetValue() public view returns (uint) {
        return simpleInteger;
    }
 
}

// child contract

contract childexample is example {
    function GetValue() public view returns (uint) {
    return 10;
    }
}
// interface

interface IExample3 {
    function GetValue() external  view returns (uint);
    function SetValue(uint _value) external;
}

contract example3 is IExample3 {
    uint private simpleInteger;
    function GetValue() external view returns (uint) {
        return simpleInteger;
    }
    
    function SetValue(uint _value) external  {
        simpleInteger = _value;
    }
}
