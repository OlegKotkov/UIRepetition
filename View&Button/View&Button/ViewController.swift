
import UIKit
class ViewController: UIViewController, UITextFieldDelegate {
    
    let textField1:UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 10, y: 300, width: 200, height: 31)
        textField.layer.cornerRadius = 5
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.contentVerticalAlignment = .center
        textField.placeholder = "Swift development"
        return textField
    }()
    let view1: UIView = {
      let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let button1:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("press me", for: .normal)
        button.backgroundColor = .blue
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
   
    let lable1: UILabel = {
      let lable = UILabel()
        lable.text = "gkhgfkhgfhg"
        lable.frame = CGRect(x: 50, y: 140, width: 150, height: 20)
        return lable
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        //setView()
        //view.addSubview(lable1)
       // view.addSubview(button1)
        //setButton()
        //button1.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        view.addSubview(textField1)
        textField1.delegate = self
        textField1.keyboardAppearance = .dark
        textField1.keyboardType = .namePhonePad
        //textField1.becomeFirstResponder()
        
    NotificationCenter.default.addObserver(forName: NSNotification.Name.UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = -50.0
        }
    NotificationCenter.default.addObserver(forName: NSNotification.Name.UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in
        self.view.frame.origin.y = 0.0
        }
         
    }
    /*
    func setView(){
        NSLayoutConstraint.activate([
            view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
     */
    /*
    func setButton(){
        NSLayoutConstraint.activate([
            
            button1.topAnchor.constraint(equalTo: view.topAnchor, constant:  30),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            button1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500)
        ])
    }
     */

/*
    @objc func tapButton() {
        let nwc = NewViewController()
        nwc.modalPresentationStyle = .fullScreen
        self.present(nwc, animated: true, completion: nil)
        
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing - это я решаю можно ли редактировать поле")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField){
        print("textFieldDidBeginEditing внимание! Началось редактирование")
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        print("textFieldShouldEndEditing - Закончилось редактирование")
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField){
        print("textFieldDidEndEditing")
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason){
        print("textFieldDidEndEditing")
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        print("shouldChangeCharactersIn выввели  \(string)")
        return true
    }
    func textFieldDidChangeSelection(_ textField: UITextField){
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        print("Тф что-то почистил")
        return true
    }
 */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        print("Хотите убрать клавиатуру?")
        
        if textField == textField1 {
            self.textField1.resignFirstResponder()
        }
        return true
}

}
