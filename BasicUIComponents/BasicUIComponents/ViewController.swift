
import UIKit

class ViewController: UIViewController {

    let view1:UIView = {
      let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let view2: UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let button1:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("press my", for: .normal)
        button.backgroundColor = .blue
       // button.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
        button.layer.cornerRadius = 7
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let buttonSt: UIButton = {
        let button  = UIButton(type: .system)
        button.setTitle("stack", for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 7
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        //button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let stackView: UIStackView = {
      let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
      return stackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(button1)
        view.addSubview(stackView)
        button1.addTarget(self, action: #selector(buttonTap), for:.touchUpInside)
        setapView1()
        setapView2()
        setupButton1()
        addButtonsToStack()
        setupStackView()
    }
    func setapView1() {
        NSLayoutConstraint.activate([
            view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    func setapView2() {
        NSLayoutConstraint.activate([
            view2.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            view2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
    }
    func setupButton1(){
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: view2.topAnchor, constant: 200),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            button1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300)
        ])
     }
    func setupStackView() {
        
    NSLayoutConstraint.activate([
   stackView.topAnchor.constraint(equalTo: button1.bottomAnchor, constant:   30),
   stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
   stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
   stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }
    func addButtonsToStack(){
        let numberOfButtton = 3
        for i in 1...numberOfButtton {
            let button = buttonSt
            button.setTitle("\(i)", for: .normal)
            stackView.addArrangedSubview(button)
        }
    }
    @objc func buttonTap() {
        let alert = UIAlertController(title: "ok", message: "PoshelNa Huy", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ponial", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}

