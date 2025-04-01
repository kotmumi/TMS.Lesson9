//
//  Cell.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 1.04.25.
//

import UIKit

class CellView: UICollectionViewCell {
    
    let labelCell: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .random
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(labelCell)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            labelCell.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelCell.centerYAnchor.constraint(equalTo: centerYAnchor),
            labelCell.heightAnchor.constraint(equalToConstant: 60),
            labelCell.widthAnchor.constraint(equalToConstant: 72),
        ])
    }
}
