//
//  BaseInfoView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 07.08.2024.
//

import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resouces.Fonts.helveticaRegular(size: 13)
        label.textColor = Resouces.Colors.inactive
        return label
    }()
    
    private let button = WAButton(type: .primary)
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resouces.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    init(title: String? = nil, buttonTitle: String? = nil) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        
        button.setTitle(title: buttonTitle)
        button.isHidden = buttonTitle == nil ? true : false
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }
}

@objc extension BaseInfoView {
    
   override func addViews() {
        super.addViews()
       setupView(titleLabel)
       setupView(contentView)
       setupView(button)
    }
    
   override func layoutViews() {
        super.layoutViews()
       
       let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
       let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
       
       NSLayoutConstraint.activate([
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
        titleLabel.topAnchor.constraint(equalTo: topAnchor),
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        
        button.trailingAnchor.constraint(equalTo: trailingAnchor),
        button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
        button.heightAnchor.constraint(equalToConstant: 30),
       // button.widthAnchor.constraint(equalToConstant: 130),
        
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
