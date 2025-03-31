//
//  FirstView.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 30.03.25.
//

import UIKit

class MainView: UIView {
    
    private let lessonLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lesson 9"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private let nameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "by: Kotylo Kirill"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    let task1Button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setTitle("Task 1", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    let task2Button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setTitle("Task 2", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    let task3Button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setTitle("Task 3", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(lessonLable)
        addSubview(nameLable)
        addSubview(task1Button)
        addSubview(task2Button)
        addSubview(task3Button)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            lessonLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            lessonLable.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            
            nameLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100),
            
            task1Button.centerXAnchor.constraint(equalTo: centerXAnchor),
            task1Button.topAnchor.constraint(equalTo: lessonLable.bottomAnchor, constant: 100),
            task1Button.widthAnchor.constraint(equalTo: lessonLable.widthAnchor, multiplier: 1.5),
            task1Button.heightAnchor.constraint(equalTo: lessonLable.heightAnchor, multiplier: 1.5),
            
            task2Button.centerXAnchor.constraint(equalTo: centerXAnchor),
            task2Button.topAnchor.constraint(equalTo: task1Button.bottomAnchor, constant: 50),
            task2Button.widthAnchor.constraint(equalTo: lessonLable.widthAnchor, multiplier: 1.5),
            task2Button.heightAnchor.constraint(equalTo: lessonLable.heightAnchor, multiplier: 1.5),
            
            task3Button.centerXAnchor.constraint(equalTo: centerXAnchor),
            task3Button.topAnchor.constraint(equalTo: task2Button.bottomAnchor, constant: 50),
            task3Button.widthAnchor.constraint(equalTo: lessonLable.widthAnchor, multiplier: 1.5),
            task3Button.heightAnchor.constraint(equalTo: lessonLable.heightAnchor, multiplier: 1.5),
            
        ])
    }
}

#Preview(traits: .portrait) {
    MainView()
}
