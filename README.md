# 스마트컨트렉트 실행 순서

1. erc20 폴더에 OnTact.sol 을 메인넛에 배포합니다.
2. mint 폴더에 TokenLock.sol을 7번을 배포합니다.

- 배포시 constructor(uint8 receiverIndex) 함수에 인자값을 0 ~ 6까지 변경해서 배포합니다.

3. TokenLock.sol 함수에 setERC20(address tokenAddress) 을 호춣하여 토큰을 설정합니다.
4. UnLock 스케줄에 따라 TokenLock.sol에 unLock() 함수를 실행합니다.
