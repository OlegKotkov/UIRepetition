
import UIKit
class ViewController: UIViewController {
    let myView: UIView = {
      let view = UIView()
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myView.backgroundColor = .systemMint
        myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myView.center = view.center
        // Создаем действие по двойному касанию для вывода в печать строки
        
       /* let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gesture2Tap))
        gestureRecognizer.numberOfTapsRequired = 2
        gestureRecognizer.numberOfTouchesRequired = 1
        myView.addGestureRecognizer(gestureRecognizer)
        myView.isUserInteractionEnabled = true
    }
    @objc func gesture2Tap() {
        print("2tapped OK")
    }
    */
        //Cоздаем смахивание
        let gestureRecogniser = UISwipeGestureRecognizer(target: self, action: #selector(gestureSwipe(_gesture: )))
        gestureRecogniser.direction = .right
        gestureRecogniser.numberOfTouchesRequired = 1
        myView.addGestureRecognizer(gestureRecogniser)
        myView.isUserInteractionEnabled = true
    }
    @objc func gestureSwipe(_gesture: UISwipeGestureRecognizer){
        //print("Huyak")
        myView.backgroundColor = .systemRed
    }
}

