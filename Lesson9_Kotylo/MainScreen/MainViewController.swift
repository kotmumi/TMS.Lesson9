//
//  ViewController.swift
//  Lesson9_Kotylo
//
//  Created by Кирилл Котыло on 30.03.25.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        mainView.task1Button.addTarget(self, action: #selector(goFirstTask(_:)), for: .touchUpInside)
        mainView.task2Button.addTarget(self, action: #selector(goSecondTask(_:)), for: .touchUpInside)
        mainView.task3Button.addTarget(self, action: #selector(goThirdTask(_:)), for: .touchUpInside)
    }
    
    @objc private func goFirstTask(_ sender: UIButton) {
        let controller = Task1ViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    @objc private func goSecondTask(_ sender: UIButton) {
        let controller = Task2ViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    @objc private func goThirdTask(_ sender: UIButton) {
        let controller = Task3ViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
}

#Preview(traits: .portrait) {
    MainViewController()
}
