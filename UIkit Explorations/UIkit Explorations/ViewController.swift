//
//  ViewController.swift
//  UIkit Explorations
//
//  Created by Gabe on 2024-12-15.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("PGButton", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        button.addTarget(self, action: #selector(buttonTab), for: .touchUpInside)
    }

    
    @objc func buttonTab() {
        print("Tapped!")
    }
}

