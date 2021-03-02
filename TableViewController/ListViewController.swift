
import UIKit

class ListViewController: UITableViewController{
    var dataset = [
        ("소울", "모든 이에게 건네는 위로","2021-01-20", 9.33),
        ("톰과 제리", "전 세계가 사랑한 라이벌 콤비", "2021-02-24", 8.12),
        ("카오스 워킹","모든 생각이 실시간으로 노출되는 ‘노이즈’에 감염된 세상", "2021-02-24", 7.55)
    ]
    
    
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()
        for (title, desc, opendate, rating) in self.dataset{
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            
            datalist.append(mvo)
        }
        return datalist
    }()
    
    override func viewDidLoad() {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = row.title
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다.")
        
    }
}
