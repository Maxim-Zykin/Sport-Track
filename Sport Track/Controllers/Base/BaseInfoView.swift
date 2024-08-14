//
//  BaseInfoView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 07.08.2024.
//

import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel:  UILabel = {
        let label = UILabel()
        label.text = "Тест".uppercased()
        label.font = Resouces.Fonts.helveticaRegular(size: 13)
        label.textColor = Resouces.Colors.inactive
        return label
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resouces.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    init(title: String? = nil, aligment: NSTextAlignment = .left) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = aligment
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
}

@objc extension BaseInfoView {
    
   override func addViews() {
        super.addViews()
       setupView(titleLabel)
       setupView(contentView)
    }
    
   override func layoutViews() {
        super.layoutViews()
       
       let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
       let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
       
       NSLayoutConstraint.activate([
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
        titleLabel.topAnchor.constraint(equalTo: topAnchor),
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        
        contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
        contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
       ])
    }
    
   override func configurate() {
        super.configurate()
       
       backgroundColor = .clear
    }
}
