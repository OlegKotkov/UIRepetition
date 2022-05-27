
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let myTable:UITableView = {
        let view = UITableView()
        return view
    }()
     var data = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
        myTable.delegate = self
        myTable.frame = view.bounds
        myTable.dataSource = self
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        for x in 1...100 {
            data.append("Some data  \(x)")
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let pvc = PresentViewController()
        pvc.modalPresentationStyle = .fullScreen
        self.present(pvc, animated: true, completion: nil)
    }

}

