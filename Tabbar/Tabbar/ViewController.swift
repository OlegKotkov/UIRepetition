

import UIKit
class ViewController: UIViewController {
    private let button: UIButton = {
       let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButoon), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
        button.layer.cornerRadius = 8
    }
    @objc func didTapButoon() {
       // Create & present TabbarController
        let tabVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        vc1.title = "Home"
        vc2.title = "Contacts"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title = "Settings"
        tabVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        guard let items = tabVC.tabBar.items else {
            return
        }
        let images = ["house", "bell", "person.circle", "star", "gear"]
        for x in 0..<items.count {
            items[x].badgeValue = "1"
            items[x].badgeTextAttributes(for: .normal)
            items[x].image = UIImage(systemName: images[x])
        }
        tabVC.modalPresentationStyle = .fullScreen
        present(tabVC,animated: true)
    }
}
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        title = "Home"
    }
}
class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Contacts"
    }
}
class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "Help"
    }
}
class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemFill
        title = "About"
    }
}
class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = "Settings"
    }
}
