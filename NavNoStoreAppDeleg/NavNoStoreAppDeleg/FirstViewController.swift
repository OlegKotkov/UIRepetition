//
//  FirstViewController.swift
//  NavNoStoreAppDeleg
//
//  Created by mac on 10.05.2022.
//


import UIKit

class FirstViewController: UIViewController {

    let button = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        button.backgroundColor = .green
        button.frame = CGRect(x: 40, y: 200, width: 200, height: 44)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button )
        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
        let bonusVC = BonusViewController()
        bonusVC.modalPresentationStyle = .fullScreen
        self.present(bonusVC, animated: true, completion: nil)
    }
}
