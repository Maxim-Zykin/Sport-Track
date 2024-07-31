//
//  WeekView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 31.07.2024.
//

import UIKit

final class WeekView: BaseView {
    
    private var stakView = UIStackView()
    
    private let calendar = Calendar.current
}

extension WeekView {

    override func addViews() {
        super.addViews()
        addView(stakView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            stakView.topAnchor.constraint(equalTo: topAnchor),
            stakView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stakView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stakView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configurate() {
        super.configurate()
    
        stakView.spacing = 7
        stakView.distribution = .fillEqually
        
        var weekDays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 2 {
           let sun = weekDays.remove(at: 0)
            weekDays.append(sun)
        }
        
        weekDays.enumerated().forEach { index, name in
            let view = WeekDayView()
            view.configurateCalendar(with: index - 1, and: name )
            stakView.addArrangedSubview(view)
        }
    }
}
