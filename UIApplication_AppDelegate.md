#UIApplication

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
크고 아주 중요한 일들은 UIApplication!
커스텀코드를 처리하는 일들은 AppDelegate! 



AppDelegate 는 UIApplication으로 부터 위임받은 일부 권한을 이용하여, 커스텀 코드와상호작용하는 역할을 담당! 

AppDelegate.swift의 역할 2가지 
1. AppDelegate 클래스 정의 
app delegate는 앱 안에서 상태 변화에 응답하고, 앱의 컨텐츠가 그려지는 창 (window)를 만든다.
--> 창을 만드는 부분은 SceneDelegate가 생기면서 그쪽으로 넘어간듯이 보인다

2. entry point(진입 지점)과 입력 이벤트(input events)를 앱에 전달하는 run loop 생성
이 작업은 UIApplicationMain 속성에 의해 완료됨 (상단에 있는 @UIApplicationMain 파일)
UIApplicationMain 속성을 사용하는 것은 UIApplicationMain 함수를 호출하고 AppDelegate클래스의 이름을 가진 delegate클래스의 이름으로 전달하는 것과 같음


//애플리케이션이 실행된 직후 사용자의 화면에 보여지기 직전에 호출 
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool	

//애플리케이션이 최초 실행될 때 호출되는 메소드 
func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool		
//애플리케이션이 InActive 상태로 전환되기 직전에 호출 
func applicationWillResignActive(_ application: UIApplication)	

//애플리케이션이 백그라운드 상태로 전환된 직후 호출
func applicationDidEnterBackground(_ application: UIApplication)	

//애플리케이션이 Active 상태가 되기 직전, 화면에 보여지기 직전에 호출 
func applicationWillEnterForeground(_ application: UIApplication)	

//애플리케이션이 Active 상태로 전환된 직후 호출
func applicationDidBecomeActive(_ application: UIApplication)

//애플리케이션이 종료되기 직전에 호출 
func applicationWillTerminate(_ application: UIApplication)	



