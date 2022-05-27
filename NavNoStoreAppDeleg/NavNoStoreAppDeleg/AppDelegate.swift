import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

     var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        let tabBarController = UITabBarController()
        let firstVC = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstVC)
        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let secondVC = SecondViewController()
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        tabBarController.viewControllers = [navigationController, secondVC]
        window?.rootViewController = tabBarController
        return true
    }
}


