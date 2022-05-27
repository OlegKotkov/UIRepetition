//
//  BonusViewController.swift
//  RepetitionUI
//
//  Created by mac on 10.05.2022.
//

import UIKit

class BonusViewController: UIViewController {
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        button.backgroundColor = .green
        button.frame = CGRect(x: 40, y: 200, width: 200, height: 44)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button )
        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
    
        let bonusVC = BonusViewController()
        self.dismiss(animated: true, completion: nil)
    
}
}
