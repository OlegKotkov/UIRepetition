
import UIKit

class ViewController: UIViewController {
    let textView: UITextView = {
        let view = UITextView()
        view.isEditable = true
        view.backgroundColor = .secondarySystemFill
        view.font = .systemFont(ofSize: 22, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemPink
        button.setTitleColor(.white, for: .normal)
        button.setTitle("SUBMIT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 22
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(textView)
        view.addSubview(button1)
        button1.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        setConstraints()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.becomeFirstResponder()
    }
    @objc func tapped () {
        textView.resignFirstResponder()
    }
    func setConstraints () {
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            textView.bottomAnchor.constraint(equalTo: button1.topAnchor, constant: -10),
            button1.widthAnchor.constraint(equalToConstant: 300),
            button1.heightAnchor.constraint(equalToConstant: 50),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor, constant: -10)
        ])
    }
}

