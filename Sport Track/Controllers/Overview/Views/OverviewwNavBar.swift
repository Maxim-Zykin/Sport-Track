//
//  OverviewwNavBar.swift
//  Sport Track
//
//  Created by Максим Зыкин on 31.07.2024.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let allWorkoutsButton = SecondaruyButton()
    private let addButon = UIButton()
    private let titleLabel = UILabel()
    
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(color: Resouces.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButon.addTarget(target, action: action, for: .touchUpInside)
    }
    
}

extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        setupView(addButon)
        setupView(titleLabel)
        setupView(allWorkoutsButton)
        setupView(weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButon.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButon.heightAnchor.constraint(equalToConstant: 28),
            addButon.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButon.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButon.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 150),
            
            titleLabel.centerYAnchor.constraint(equalTo: addButon.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButon.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
            
        ])
    }
    
    override func configurate() {
        super.configurate()
        backgroundColor = .white

        addButon.setImage(Resouces.Image.Common.addButton, for: .normal)
        
        titleLabel.text = Resouces.Strings.TabBar.overview
        titleLabel.textColor = Resouces.Colors.titleGray
        titleLabel.font = Resouces.Fonts.helveticaRegular(size: 22)
        
        allWorkoutsButton.setTitle(title: Resouces.Strings.Overview.allWorcoustButton)
    }
}

