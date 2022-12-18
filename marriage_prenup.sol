pragma solidity ^0.6.0;
​
contract Marriage {
  // State of the marriage
  enum State { Pending, Married }
  State public state;
​
  // Parties to the marriage
  address public partner1;
  address public partner2;
​
  // Date and location of the marriage
  uint256 public date;
  string public location;
​
  // NFT of the wedding picture
  address public weddingPictureNFT;
​
  // Constructor to initialize the contract with the parties and wedding details
  constructor(address _partner1, address _partner2, uint256 _date, string memory _location, address _weddingPictureNFT) public {
    partner1 = _partner1;
    partner2 = _partner2;
    date = _date;
    location = _location;
    weddingPictureNFT = _weddingPictureNFT;
    state = State.Pending;
  }
​
  // Function to finalize the marriage by setting the state to "Married"
  function finalize() public {
    state = State.Married;
  }
}