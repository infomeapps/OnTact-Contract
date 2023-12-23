## KOREAN

# 스마트컨트렉트 실행 순서

1. multi_sig_wallet 폴더에 MultiSigWallet.sol 을 배포합니다.
- 배포시 생성자로 합의체 주소 3개와 합의 숫자를 넣습니다.

2. mint 폴더에 TokenLock.sol을 7번을 배포합니다.
- 배포 시 constructor 에 인자 uint8 receiverIndex 를 0 ~ 6까지 변경해서 배포합니다.
- 배포 시 constructor 에 인자 address walletSigAddress 를 1번에서 배포한 CA주소를 넣습니다.

3. erc20 폴더에 OnTact.sol 을 배포합니다.
- 배포 시 constructor(address unlock00, address unlock01, address unlock02, address unlock03, address unlock04, address unlock05, address unlock06) 생성자에 TokenLock.sol 배포한 CA주소를 인자로 넣습니다.

4. TokenLock.sol 함수에 setERC20(address tokenAddress) 을 호출하여 토큰을 설정합니다.

5. UnLock 스케줄에 따라 MultiSigWallet.sol에 submitUnLocks 함수를 실행합니다.
- submitUnLocks 함수인자에는 TokenLock.sol 배포 CA 7개 주소를 배열로 넣습니다.

6. UnLock 스케줄에 따라 MultiSigWallet.sol에 confirmUnLocks 함수를 실행합니다.
- confirmUnLocks 함수인자에는 submitUnLocks 배포 했던 transaction id 배열로 넣습니다.

## ENGLISH

# Smart Contract Execution Order

1. Deploy TokenLock.sol seven times in the mint folder.

- During deployment, parameter value in the constructor (uint8 receiverIndex) function should changes  from 0 to 6

2. Deploy OnTact.sol to the erc20 folder.

- When deploying, input the address distributed in TokenLock.sol for parameter value in the constructor (address unlock00, address unlock01, address unlock02, address unlock03, address unlock04, address unlock05, address unlock06)

3. Set up the token by calling setERC20 (address tokenAddress) of the  function in TokenLock.sol.
4. Run the unLock() function of TokenLock.sol according to the UnLock schedule
