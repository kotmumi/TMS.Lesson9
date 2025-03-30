//
//  ViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 30.03.25.
//

import UIKit

class MainViewController: UIViewController {
    
    let firstView = MainView()
    
    override func loadView() {
        view = firstView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        firstView.firstTaskButton.addTarget(self, action: #selector(goFirstTask(_:)), for: .touchUpInside)
    }
    
    @objc private func goFirstTask(_ sender: UIButton) {
        let controller = FirstTaskViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
}

#Preview(traits: .portrait) {
    MainViewController()
}
