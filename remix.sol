//SPDX-License-Identifier: MIT

pragma solidity 0.8.8; //most recent 0.8.15; version ranges for example: >=0.8.7 <0.9.0; newer than ...: ^0.8.7

/* Lesson - part 1.1
contract SimpleStorage1 
{
    // boolean - t/f, uint - unsigned integer, int - whole num, address, (bytes)
        uint256 public favoriteNumber; //unidentified is null

        // változók/variables
        // bool hasFavoriteNumber = true;
        // string favoriteNumberInText = "Five";
        // int256 favoriteInt = -5;
        // address myAddress = 0x5ac5A3206BCc02190150508a470D614785eab9A3;
        // bytes32 fvaoriteBytes = "cat";
        

        function store(uint256 _favoriteNumber) public {
            favoriteNumber = _favoriteNumber;
        }

            //view and pure are gas free, bcs dont update the blockchain
            //but if gas calling func calls view/pure, it costs gas
        function retrieve () public view returns(uint256){
            return favoriteNumber;
        }
        //0xd9145CCE52D386f254917e481eB44e9943F39138
}
*/ 

// Lesson - part 1.2, Arrays and structs
contract SimpleStorage2 
{
    uint256 public favoriteNumber;

    People public person = People({favoriteNumber: 2, name: "Patrick"});

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //uint256[] public favoriteNumbersList; //Lista/array készítése
    People[] public people; //[x] is fixed size array

    function store(uint256 _favoriteNumber) public {
            favoriteNumber = _favoriteNumber;
        }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }



}
