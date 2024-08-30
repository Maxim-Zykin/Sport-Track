//
//  TimerView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 19.08.2024.
//

import UIKit

final class TimerView: BaseInfoView {
    
    private let elepsedTimerLabel: UILabel = {
        let label = UILabel()
        label.text = Resouces.Strings.Session.elepsedTime
        label.font = Resouces.Fonts.helveticaRegular(size: 14)
        label.textColor = Resouces.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    
    private let elepsedTimerValueLabel: UILabel = {
        let label = UILabel()
        label.font = Resouces.Fonts.helveticaRegular(size: 46)
        label.textColor = Resouces.Colors.titleGray
        label.textAlignment = .center
        return label
    }()
    
    private let remainegTimerLabel: UILabel = {
        let label = UILabel()
        label.text = Resouces.Strings.Session.remainegTime
        label.font = Resouces.Fonts.helveticaRegular(size: 13)
        label.textColor = Resouces.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    
    private let remainegTimerValueLabel: UILabel = {
        let label = UILabel()
        label.font = Resouces.Fonts.helveticaRegular(size: 13)
        label.textColor = Resouces.Colors.titleGray
        label.textAlignment = .center
        return label
    }()

    private let timetStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 10
        return view
    }()
     
    private let progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(percent: 0.7)
        return view
    }()
}

extension TimerView {
    
   override func addViews() {
        super.addViews()
       setupView(progressView)
       setupView(timetStackView)
       [elepsedTimerValueLabel, elepsedTimerLabel, remainegTimerLabel, remainegTimerValueLabel ].forEach {
           timetStackView.addArrangedSubview($0)
       }

    }
    
   override func layoutViews() {
        super.layoutViews()
       
       NSLayoutConstraint.activate([
       
        progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
        progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
        progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
        progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor),
        progressView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 40),
        
        timetStackView.centerYAnchor.constraint(equalTo: progressView.centerYAnchor),
        timetStackView.centerXAnchor.constraint(equalTo: progressView.centerXAnchor)
       ])
    }
    
   override func configurate() {
       super.configurate()
    }
}
