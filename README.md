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

1. MultiSigWallet.sol will be deployed in a multi_sig_wallet folder.
- Enter three multi-signature addresses in constructor when it's deployed.

2. Deploy TokenLock.sol in the mint folder seven times.
- When deploying it, change the uint8 receiverIndex parameter in constructor from 0 to 6.
- When deploying it, enter CA address in the address walletSigAddress parameter of constructor.

3. Deploy OnTact.sol in erc20 folder.
- When deploying it, enter the CA address deployed in TokenLock.sol as parameter for constructor(address unlock00, address unlock01, address unlock02, address unlock03, address unlock04, address unlock05, address unlock06) in constructor.

4. Call setERC20(address tokenAddress) in TokenLock.sol and set a token.

5. Run submitUnLocks in MultiSigWallet.sol according to UnLock schedule.
- Enter an array of the seven CA addresses deployed in TokenLock.sol as parameter for submitUnLocks.

6. Run confirmUnLocks in MultiSigWallet.sol according to UnLock schedule.
- Enter an array of transaction id deployed in submitUnLocks as parameter for confirmUnLocks.