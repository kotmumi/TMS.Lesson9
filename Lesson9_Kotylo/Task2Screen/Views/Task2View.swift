//
//  Task2View.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 31.03.25.
//

import UIKit

class Task2View: UIView {
    
    let upButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setBackgroundImage(UIImage(systemName: "arrowshape.up.fill"), for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    let downButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setBackgroundImage(UIImage(systemName: "arrowshape.down.fill"), for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    let leftButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setBackgroundImage(UIImage(systemName: "arrowshape.left.fill"), for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    let rightButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setBackgroundImage(UIImage(systemName: "arrowshape.right.fill"), for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    let roundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        label.layer.masksToBounds = true
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.cornerRadius = 16
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .white
        addSubview(roundLabel)
        addSubview(upButton)
        addSubview(downButton)
        addSubview(leftButton)
        addSubview(rightButton)
    }
}
