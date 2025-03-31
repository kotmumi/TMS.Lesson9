//
//  Task1View.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 31.03.25.
//

import UIKit

class Task1View: UIView {

    // MARK: - add views
    var count = 0
    
    let scoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Score: 0"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(roundButton)
        addSubview(scoreLabel)
        addSubview(backButton)
    }
}
