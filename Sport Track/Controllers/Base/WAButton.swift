//
//  SecondaruyButton.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

public enum WAButtonType{
    case primary
    case secondary
}

final class WAButton: UIButton {
    
    private var type: WAButtonType = .primary
    
    private let label = UILabel()
    private let iconView =  UIImageView()
    
    init(type: WAButtonType) {
        self.type = type
        super.init(frame: .zero)
        addViews()
        layoutView()
        configurate()
    }

    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        addViews()
        layoutView()
        configurate()
    }
    
    func setTitle(title: String?) {
        label.text = title
    }
}

private extension WAButton {
    
    func addViews() {
        setupView(label)
        setupView(iconView)
    }
    
    func layoutView() {
        
        var horisontalOffset: CGFloat {
            switch type {
                
            case .primary:
                return 0
            case .secondary:
                return 10
            }
        }
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horisontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horisontalOffset * 2)
        
        ])
    }
    
    func configurate() {
        
        switch type {
            
        case .primary:
            label.textColor = Resouces.Colors.inactive
            label.font = Resouces.Fonts.helveticaRegular(size: 13)
            iconView.tintColor = Resouces.Colors.inactive
            iconView.image = Resouces.Image.Common.downArrow?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = Resouces.Colors.active
            
        case .secondary:
            backgroundColor = Resouces.Colors.secondaruy
            layer.cornerRadius = 14
            
            label.textColor = Resouces.Colors.active
            label.textAlignment = .center
            label.font = Resouces.Fonts.helveticaRegular(size: 15)
            
            iconView.image = Resouces.Image.Common.downArrow?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = Resouces.Colors.active
        }
        
        makeSustem(self)
    }
}
