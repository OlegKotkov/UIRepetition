
import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let myTableView = UITableView()
    var data = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTableView)
        myTableView.frame = view.bounds
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        for x in 0...100 {
            data.append("Some data \(x)")
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Cell \(indexPath) Tapped")
    }
}

