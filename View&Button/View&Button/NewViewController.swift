//
//  NewViewController.swift
//  View&Button
//
//  Created by mac on 12.05.2022.
//

import UIKit

class NewViewController: UIViewController {
    
    let button2: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Hello", for: .normal)
        button.frame = CGRect(x: 50, y: 100, width: 100, height: 30)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 3
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        view.addSubview(button2)
        button2.addTarget(self, action: #selector(tapButton2), for: .touchUpInside)
    }
    @objc func tapButton2(){
        /*let alert = UIAlertController(title: "wwyr", message: "qwqew", preferredStyle: .alert)
        let action = UIAlertAction(title: "wqewq", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        */
        _ = NewViewController()
        self.dismiss(animated: true, completion: nil)
        
        
        
        
    }
}
