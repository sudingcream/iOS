Swift에서는 다양한 방법으로 날짜를 다룰 수 있어요..
예를 들면 Date, DateFormatter, Calendar, DateComponent 등이 있어요! 
그 중, DateFormatter에 대해서 알아볼건데요..
 
 
 
DateFormatter을 사용하여,
Date를 다양한 방식으로 출력하거나 출력된 Date 문자열을 읽어올 수 있습니다.
DateFormatter를 인스턴스화 시켜 사용합니다.
let dateFormatter = DateFormatter()
 
 
그리고 다양한 방법으로 Date를 표시합니다
dateStyle과 timeStyle을 medium,short,long,full,none으로 표시할 수 있어요 
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .none 
 
 
5 format 스타일 옵션과 예시 입니다! 
 DATE      TIME     DATE/TIME STRING
"none"    "none"    
"none"    "short"   9:42 AM
"none"    "medium"  9:42:27 AM
"none"    "long"    9:42:27 AM EDT
"none"    "full"    9:42:27 AM Eastern Daylight Time
"short"   "none"    10/10/17
"short"   "short"   10/10/17, 9:42 AM
"short"   "medium"  10/10/17, 9:42:27 AM
"short"   "long"    10/10/17, 9:42:27 AM EDT
"short"   "full"    10/10/17, 9:42:27 AM Eastern Daylight Time
"medium"  "none"    Oct 10, 2017
"medium"  "short"   Oct 10, 2017, 9:42 AM
"medium"  "medium"  Oct 10, 2017, 9:42:27 AM
"medium"  "long"    Oct 10, 2017, 9:42:27 AM EDT
"medium"  "full"    Oct 10, 2017, 9:42:27 AM Eastern Daylight Time
"long"    "none"    October 10, 2017
"long"    "short"   October 10, 2017 at 9:42 AM
"long"    "medium"  October 10, 2017 at 9:42:27 AM
"long"    "long"    October 10, 2017 at 9:42:27 AM EDT
"long"    "full"    October 10, 2017 at 9:42:27 AM Eastern Daylight Time
"full"    "none"    Tuesday, October 10, 2017
"full"    "short"   Tuesday, October 10, 2017 at 9:42 AM
"full"    "medium"  Tuesday, October 10, 2017 at 9:42:27 AM
"full"    "long"    Tuesday, October 10, 2017 at 9:42:27 AM EDT
"full"    "full"    Tuesday, October 10, 2017 at 9:42:27 AM Eastern Daylight Time
 
 
 
 
dateFormatter로 날짜 출력했을 때 한국말 locale을 설정하지 않으면,
자동으로 영어로 나오는데여 (ex.March 2, 2020)
Locale함수를 사용해서 원하는 언어로 Date를 출력할 수 있어요
// US English Locale (en_US)
dateFormatter.locale = Locale(identifier: "en_US")
print(dateFormatter.string(from: date)) // Jan 2, 2001 

// French Locale (fr_FR)
dateFormatter.locale = Locale(identifier: "fr_FR")
print(dateFormatter.string(from: date)) // 2 janv. 2001 

// Japanese Locale (ja_JP)
dateFormatter.locale = Locale(identifier: "ja_JP")
print(dateFormatter.string(from: date)) // 2001/01/02

// Korean Local (Ks_ko)
dateFormatter.local = Locale(identifier: "Ko_kr")
print(dateFormatter.string(from:date)) // 2021년 2월 22일
 
 
 
closure 형식으로 쓴다면 이렇게 사용할 수 있습니당.
    let formatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "Ko_kr")
        return dateFormatter
    }()
 
 
string에서 Date타입으로 만들 때는, 
let dateString = "2021-02-22 20:48:30 +0000"
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"
let date = dateFormatter.date(from:dateString)
 
 
 
 
안녕...

