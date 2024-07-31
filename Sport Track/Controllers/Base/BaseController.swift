//
//  BaseController.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}
class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configurate()
    }
}

@objc extension BaseController {
    
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configurate() {
        view.backgroundColor = Resouces.Colors.backround
    }
    
    func navBarLeftButton() {
        print("Left tapped")
    }
    
    func navBarRightButton() {
         print("Right tapped")
    }
}

extension BaseController {
    
    func addNavBarButton(position: NavBarPosition, title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resouces.Colors.active, for: .normal)
        button.setTitleColor(Resouces.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resouces.Fonts.helveticaRegular(size: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButton), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButton), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
