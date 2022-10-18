// MetaMask is our 'provider' in this case
const provider = new ethers.providers.Web3Provider(window.ethereum);

// You (whoever is signed into MetaMask) is the 'signer'
const signer = provider.getSigner();

// the 'contract' object allows us to call functions from our smart contract
const contract = new ethers.Contract(contractAddress, contractABI, provider);

// the 'contractWithSigner' object allows us to call smart contract functions that
// require us to send a transaction (like changing a number on the blockchain)
const contractWithSigner = contract.connect(signer);

async function init() {
  await provider.send("eth_requestAccounts", []);
}

init();

// EVENT LISTENERS

// when I click on the Get Initial EM Coin button...
$('#Get Initial EM Coin').click(function(){
  redeemFreeTokens();
})

// L1
$('#L1').click(function(){
  contractWithSigner.answer1(answer1input.value);
})

// L2
$('#L2').click(function(){
  contractWithSigner.answer2(answer2input.value);
})

// L3
$('#L3').click(function(){
  contractWithSigner.answer3(answer3input.value);
})

// L4
$('#L4').click(function(){
  contractWithSigner.answer4(answer4input.value);
})

// L5
$('#L5').click(function(){
  contractWithSigner.answer5(answer5input.value);
})

// L6
$('#L6').click(function(){
  contractWithSigner.answer6(answer6input.value);
})

// L7
$('#L7').click(function(){
  contractWithSigner.answer7(answer7input.value);
})

// L8
$('#L8').click(function(){
  contractWithSigner.answer8(answer8input.value);
})

// L9
$('#L9').click(function(){
  contractWithSigner.answer9(answer9input.value);
})

// L10
$('#L10').click(function(){
  contractWithSigner.answer10(answer10input.value);
})

// checks the blockchain for the current number every 2 seconds
// so that the page can be updated automatically if the number
// is changed.
// setInterval(function(){
//   getNum();
// }, 2000)

// FUNCTIONS

// CHANGING THE BLOCKCHAIN

async function getNum() {

  // grab the number from the contract
  const myNum = await contract.getNum();

  // convert the number into a more human-readable number
  const convertedNum = +myNum;
  
  // display the current number to your web page
  $('#currentNum').text(`${convertedNum}`)
}

// READING FROM THE BLOCKCHAIN

function setNum() {
  // grab the user input from the input text box
  const numToSet = $('#numInput').val();

  // convert the number they added to a number that Ethereum can
  // understand (a 'BigNumber')
  const convertedNum = ethers.utils.parseEther(numToSet);

  // pass the converted number to the contract
  contractWithSigner.setNum(numToSet);
}

