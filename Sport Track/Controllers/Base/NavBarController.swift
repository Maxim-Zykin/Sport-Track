//
//  NavBarController.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurate()
    }
    
    private func configurate() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resouces.Colors.titleGray,
            .font: Resouces.Fonts.helveticaRegular(size: 17)
        ]
        
        navigationBar.addBottomBorder(color: Resouces.Colors.separator, height: 1)
    }
}
