//
//  Resouces.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

enum Resouces {
    
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let titleGray = UIColor(hexString: "#545C77")
        static let backround = UIColor(hexString: "#F8F9F9")
        static let secondaruy = UIColor(hexString: "#F0F3FF")
    }
    
    enum Image {
        enum TabBar {
            static let overview = UIImage(named: "overview")
            static let session = UIImage(named: "session")
            static let progress  = UIImage(named: "progress")
            static let settings = UIImage(named: "settings")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "tick")
            static let addButton = UIImage(named: "AddButton")
        }
    }
    
    
    enum Strings {
        enum TabBar {
            static let overview = "Сегодня"
            static let session = "Занятия"
            static let progress  = "Погресс"
            static let settings = "Настройки"
        }
        
        enum Session {
            static let elepsedTime = "Прошедшее время"
            static let remainegTime = "Оставшееся время"
        }
        
        enum Overview {
            static let allWorcoustButton = "Все тренировки"
        }
    }
    
    enum Fonts {
        static func helveticaRegular(size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
