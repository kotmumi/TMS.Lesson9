//
//  Task3View.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 1.04.25.
//

import UIKit

class Task3View: UIView {
    
    let collectionView = CellCollectionView()
    
    let showButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        button.setTitle("Show me", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .black
        button.layer.cornerRadius = 8
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .white
        addSubview(collectionView)
        collectionView.isHidden = true
        addSubview(showButton)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            showButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            showButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            showButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.4),
            showButton.heightAnchor.constraint(equalTo: showButton.widthAnchor, multiplier: 0.3),
            
            collectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            collectionView.centerYAnchor.constraint(equalTo: centerYAnchor),
            collectionView.heightAnchor.constraint(equalTo: heightAnchor),
            collectionView.widthAnchor.constraint(equalTo: widthAnchor),
            
        ])
    }
}
