import UIKit

// UIAlertController (메시지 창 컨트롤러) 인스턴스 생성
// 세 개의 인자 값 사용 
// title : 메시지 창의 타이틀 , message : 메시지 내용, proferredStyle : 메시지창의 스타일 
let alert = UIAlertController(title: "알림", 
                              message: "UIAlertController 알림창입니다.",
                              proferredStyle: UIAlertController.Style.alert) //proferredStyle은 축약 표현 가능 (preferredStyle: .alert)
                         

// 메시지 창에 들어갈 버튼 구현 
// 메시지 창에서의 버튼은 모두 하나의 Action으로 취급 
// UIAlertAction은 2~3개의 인자를 가진다.
// title : 버튼 타이틀 이름 , style : 버튼 타입
// style은 3가지 타입이 있다. 
// .cancel : 아무것도 실행되지 않은 채 메시지 창의 액션이 취소된다는 것을 뜻한다. 
// .destructive : 주의 해서 선택해야하는 버튼에 적용 (빨간색으로 강조됨)
// 이외의 일반적인 버튼은 모두 .default 타입으로 선택
let cancel = UIAlertAction(titile: "취소", 
                           style: UIAlertAction.Style.cancel)

// UIAlertAction 클래스를 사용하여 생성한 인스턴스를 UIAlertController 인스턴스에 등록함 
alert.addAction(cancel)


// 메시지 창 인스턴스를 실행해서 화면에 출력하는 과정 (프레젠트 메소드)
self.present(alert, animated: true)
