//
//  SessionController.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

class SessionController: BaseController {
    
//    private let timerView: BaseInfoView = {
//        let view = BaseInfoView(title: "Test B", buttonTitle: "Test Button".uppercased())
//        
//        return view
//    }()
    
    private let timerView: TimerView = {
        let view = TimerView()
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Кардио"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session
        addNavBarButton(position: .left, title: "Пауза")
        addNavBarButton(position: .right, title: "Финиш")
    }
}

extension SessionController {
        
    override func addViews() {
        super.addViews()
        view.setupView(timerView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
    
    override func configurate() {
        super.configurate()
    }
}
