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

contract.on("AnswerEvent", (wrongOrCorrect) => {

  console.log(wrongOrCorrect);
  if(wrongOrCorrect == true) {
    $('#answer-popup').text("🎉Congratulations🎉");
  } else {
    $('#answer-popup').text("❌Try again! It's close!");
  }

  setTimeout(function() {

    $('#answer-popup').text("");

  }, 4000)

})

init();

// EVENT LISTENERS

// when I click on the Get Initial EM Coin button...
$('#GetInitialEMCoin').click(function(){
  contractWithSigner.redeemFreeTokens();
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