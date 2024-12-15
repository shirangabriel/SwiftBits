//
//  ViewController.swift
//  UIkit Explorations
//
//  Created by Gabe on 2024-12-15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SBButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("PGButton kdjfkasjdflkjdsaf ", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: SBButton.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: SBButton.bottomAnchor, constant: 30),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        button.addTarget(self, action: #selector(buttonTab), for: .touchUpInside)
    }

    
    @objc func buttonTab() {
        print("Tapped!")
    }


    @IBAction func SBButtonTapped(_ sender: Any) {
        print("SBButtonTapped")
    }
    
    
}

