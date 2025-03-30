//
//  FirstTaskViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 30.03.25.
//


import UIKit

class FirstTaskViewController: UIViewController {
    // MARK: - add views
    let roundButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setTitle("Tap me", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 50
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        let widthHeight = CGFloat.random(in: 30...100)
        let x = CGFloat.random(in: 0...view.frame.width - widthHeight)
        let y = CGFloat.random(in: 100...view.frame.height - widthHeight )
        roundButton.layer.cornerRadius = widthHeight / 2
        roundButton.frame = CGRect(x: x, y: y, width: widthHeight, height: widthHeight)
        roundButton.backgroundColor = .random
    }
    
    func setupViews() {
        view.addSubview(roundButton)
        roundButton.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
    }
//MARK: -Action View
    @objc private func tapButton(_ sender: UIButton) {
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
            alpha: 0.5
        )
    }
}

#Preview(traits: .portrait) {
    FirstTaskViewController()
}
