//
//  Date + ext.swift
//  Sport Track
//
//  Created by Максим Зыкин on 31.07.2024.
//

import Foundation

extension Date {
    private var calendar: Calendar {
//        return Calendar.current
        var calendar = Calendar(identifier: .gregorian)
        calendar.firstWeekday = 2
        return calendar
    }
    
    var startOfWeak: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDate = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firstDate) ?? self
    }
    
    func agoForward(to days: Int) -> Date {
        calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
