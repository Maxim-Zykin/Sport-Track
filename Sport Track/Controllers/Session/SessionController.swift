//
//  SessionController.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Кардио"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session
        addNavBarButton(position: .left, title: "Пауза")
        addNavBarButton(position: .right, title: "Финиш")
    }


}
