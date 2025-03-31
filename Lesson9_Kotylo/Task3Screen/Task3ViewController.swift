//
//  Task3ViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 31.03.25.
//

import UIKit

class Task3ViewController: UIViewController {
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("<", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .black)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(tapBackButton(_:)), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        backButton.frame = CGRect(x: 20, y: 30, width: 50, height: 50)
    }
    
    @objc private func tapBackButton(_ sender: UIButton) {
        let controller = MainViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
}

#Preview(traits: .portrait) {
    Task3ViewController()
}
