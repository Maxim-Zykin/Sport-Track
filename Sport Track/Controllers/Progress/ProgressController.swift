//
//  ProgressController.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Прогресс"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.progress
        addNavBarButton(position: .left, title: "Экспорт")
        addNavBarButton(position: .right, title: "Детально")
    }
    
    override func navBarLeftButton() {
        print("Progress Left")
    }

    override func navBarRightButton() {
        print("Progress Right")
    }
}
