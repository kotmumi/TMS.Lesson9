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
        mainView.task1Button.addTarget(self, action: #selector(goTask(_:)), for: .touchUpInside)
        mainView.task2Button.addTarget(self, action: #selector(goTask(_:)), for: .touchUpInside)
        mainView.task3Button.addTarget(self, action: #selector(goTask(_:)), for: .touchUpInside)
    }
    
    @objc private func goTask(_ sender: UIButton) {
        let controller: UIViewController
        switch sender {
            case mainView.task1Button:
                controller = Task1ViewController()
            case mainView.task2Button:
                controller = Task2ViewController()
            case mainView.task3Button:
                controller = Task3ViewController()
            default:
                controller = UIViewController()
        }
        controller.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(controller, animated: true)
    }
}

#Preview(traits: .portrait) {
    MainViewController()
}
