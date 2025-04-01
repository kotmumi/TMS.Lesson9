//
//  CellCollectionView.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 1.04.25.
//

import UIKit

class CellCollectionView: UICollectionView {
    
    let flowLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: flowLayout)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.register(CellView.self, forCellWithReuseIdentifier: "cell")
        delegate = self
        dataSource = self
    }
}

extension CellCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CellView else {
            return UICollectionViewCell()
        }
        return cell
    }
}

extension CellCollectionView: UICollectionViewDelegate {
    
}
