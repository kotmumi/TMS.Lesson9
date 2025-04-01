//
//  FirstTaskViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 30.03.25.
//


import UIKit

class Task1ViewController: UIViewController {
   
    let rigidFeedback = UIImpactFeedbackGenerator(style: .rigid)
    let task1View = Task1View()
    
    override func loadView() {
        view = task1View
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        
        let diameter = CGFloat.random(in: 30...100)
        let x = CGFloat.random(in: 0...view.frame.width - diameter)
        let y = CGFloat.random(in: 100...view.frame.height - diameter )
        
        task1View.roundButton.layer.cornerRadius = diameter / 2
        task1View.roundButton.frame = CGRect(x: x, y: y, width: diameter, height: diameter)
        task1View.roundButton.backgroundColor = .random
        
        task1View.scoreLabel.frame = CGRect(x: view.frame.width / 4, y: 50, width: view.frame.width/2, height: 50)
        
    }
    
    func setupViews() {
        task1View.roundButton.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
    }
    
//MARK: -Action View
    @objc private func tapButton(_ sender: UIButton) {
        task1View.count += 1
        task1View.scoreLabel.text = "Score: \(task1View.count)"
        rigidFeedback.impactOccurred()
        viewDidLayoutSubviews()
    }
}

// MARK: -extension UIColor to func random
extension UIColor {
    static var random: UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1
        )
    }
}

#Preview(traits: .portrait) {
    Task1ViewController()
}
