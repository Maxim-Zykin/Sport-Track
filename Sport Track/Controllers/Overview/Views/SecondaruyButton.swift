//
//  SecondaruyButton.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

final class SecondaruyButton: UIButton {
    
    private let label = UILabel()
    private let iconView =  UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutView()
        configurate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(title: String) {
        label.text = title
    }
}

private extension SecondaruyButton {
    
    func addViews() {
        addView(label)
        addView(iconView)
    }
    
    func layoutView() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        
        ])
    }
    
    func configurate() {
        
        backgroundColor = Resouces.Colors.secondaruy
        layer.cornerRadius = 14
        makeSustem(self)
        
        label.textColor = Resouces.Colors.active
        label.textAlignment = .center
        label.font = Resouces.Fonts.helveticaRegular(size: 15)
        
        iconView.image = Resouces.Image.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resouces.Colors.active
    }
}
