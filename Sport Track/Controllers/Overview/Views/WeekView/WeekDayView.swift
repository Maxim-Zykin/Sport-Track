//
//  WeekDayView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 31.07.2024.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dayLabel = UILabel()
        private let stakView = UIStackView()
        
        func configurateCalendar(with index: Int, and name: String) {
            
            let startOfWeak = Date().startOfWeak
            let currentDay = startOfWeak.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            nameLabel.text = name.uppercased()
            dayLabel.text = "\(day)"
        }
    }
}

extension WeekView.WeekDayView {

    override func addViews() {
        super.addViews()
        addView(stakView)
        
        stakView.addArrangedSubview(nameLabel)
        stakView.addArrangedSubview(dayLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            stakView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stakView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    override func configurate() {
        super.configurate()
        
        backgroundColor = .red
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resouces.Fonts.helveticaRegular(size: 9)
        nameLabel.textAlignment = .center
        
        dayLabel.font = Resouces.Fonts.helveticaRegular(size: 15)
        dayLabel.textAlignment = .center
        
        stakView.spacing = 3
        stakView.axis = .vertical
    }
}
