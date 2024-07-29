//
//  Resouces.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

enum Resouces {
    
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleGray = UIColor(hexString: "#545C77")
        static var backround = UIColor(hexString: "#F8F9F9")
        static var secondaruy = UIColor(hexString: "#F0F3FF")
    }
    
    enum Image {
        enum TabBar {
            static var overview = UIImage(named: "overview")
            static var session = UIImage(named: "session")
            static var progress  = UIImage(named: "progress")
            static var settings = UIImage(named: "settings")
        }
        
        enum Common {
            static var downArrow = UIImage(named: "tick")
        }
    }
    
    enum Overview {
        static var allWorcoustButton = "Все тренировки"
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Обзор"
            static var session = "Занятия"
            static var progress  = "Погресс"
            static var settings = "Настройки"
        }
    }
    
    enum Fonts {
        static func helveticaRegular(size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
