

UIApplicationMAin() 함수가 생성하는 UIApplication은 앱의 본체라고 할 수 있는 객체이다.
사실상 앱 그 자체를 의미!
(우리가 작성한 코드, 기능, 객체 이런 모든 것들 다 UIApplication에 포함되어 있는 하위 객체)



모바일 app을 실행하면 초기 구동 과정을 거쳐 앱 프로세스가 메모리에 등록되는데, 
이 때이 앱 프로세스가 곧 UIApplication 객체라고 봐도 무방



앱이 시작되면, 시스템은 UIApplicationMain(_:_:_:_:)함수를 호출함!
이 함수는 다른 task들 중에서 싱글톤 UIApplication 객체를 생성함 
그런 다음, shared 클래스 메소드를 호출하여 객체에 접근 


UIApplication은 서브클래싱(다른 클래스의 특성을 상속하고, 수정)을 하지 않는다. 
따라서, AppDelegate 라는 대리 객체를 내세우고, 커스텀 코드를 처리할 수 있도록 약간의 권한을 부여한다!


AppDelegate 는 UIApplication으로 부터 위임받은 일부 권한을 이용하여, 커스텀 코드와상호작용하는 역할을 담당! 

AppDelegate.swift의 역할 2가지 
1. AppDelegate 
