//
//  Task3ViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 31.03.25.
//

import UIKit

class Task3ViewController: UIViewController {

    private let task3View = Task3View()
    
    override func loadView() {
        view = task3View
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        
        task3View.showButton.addTarget(self, action: #selector(show(_:)), for: .touchUpInside)
        
    }
    
    @objc private func show(_ sender: UIButton){
             task3View.collectionView.isHidden.toggle()
        if task3View.collectionView.isHidden == false {
            task3View.showButton.setTitle( "Hidden me", for: .normal)
        } else {
            task3View.showButton.setTitle( "Show me", for: .normal)
        }
    }
}

#Preview(traits: .portrait) {
    Task3ViewController()
}
