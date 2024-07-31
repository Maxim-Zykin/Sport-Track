//
//  BaseView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 31.07.2024.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configurate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

@objc extension BaseView {
    
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configurate() {
        
    }
}
