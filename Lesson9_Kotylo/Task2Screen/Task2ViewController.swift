//
//  SecondTaskViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 31.03.25.
//

import UIKit

class Task2ViewController: UIViewController {
    
    let task2View = Task2View()
    
    override func loadView() {
        view = task2View
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        task2View.backButton.addTarget(self, action: #selector(tapBackButton(_:)), for: .touchUpInside)
        task2View.upButton.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
        task2View.downButton.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
        task2View.leftButton.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
        task2View.rightButton.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        task2View.backButton.frame = CGRect(x: 20, y: 30, width: 50, height: 50)
        
        task2View.roundLabel.frame = CGRect(x: view.frame.width / 2 - 16, y: view.frame.height / 2 - 16, width: 32, height: 32)
        
        task2View.downButton.frame = CGRect(x: view.frame.width / 2 - 32, y: view.frame.height - 100, width: 64, height: 64)
        
        task2View.upButton.frame = CGRect(x: view.frame.width / 2 - 32, y: view.frame.height - 200, width: 64, height: 64)
        
        task2View.leftButton.frame = CGRect(x: view.frame.width / 2 - 112, y: view.frame.height - 150, width: 64, height: 64)
        
        task2View.rightButton.frame = CGRect(x: view.frame.width / 2 + 48, y: view.frame.height - 150, width: 64, height: 64)
    }
    
    
    @objc private func tapButton(_ sender: UIButton) {
        var x = task2View.roundLabel.frame.origin.x
        var y = task2View.roundLabel.frame.origin.y
        switch sender {
        case task2View.downButton:
            if y < task2View.upButton.frame.origin.y - 48 {
                y += 10
            }
        case task2View.upButton:
            if y > 100 {
                y -= 10
            }
        case task2View.leftButton:
            if x > 10 {
                x -= 10
            }
        case task2View.rightButton:
            if x < view.frame.width - 42 {
                x += 10
            }
        default:
            break
        }
        task2View.roundLabel.frame.origin.x = x
        task2View.roundLabel.frame.origin.y = y
    }
    
    @objc private func tapBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

#Preview(traits: .portrait) {
    Task2ViewController()
}
