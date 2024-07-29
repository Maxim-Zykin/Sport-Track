//
//  SettingsController.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.settings
    }


}
