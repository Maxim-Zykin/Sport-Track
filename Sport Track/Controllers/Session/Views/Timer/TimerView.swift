//
//  TimerView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 19.08.2024.
//

import UIKit

final class TimerView: BaseInfoView {

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
    }
    
   override func layoutViews() {
        super.layoutViews()
       
       NSLayoutConstraint.activate([
       
        progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
        progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
        progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
        progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
       ])
    }
    
   override func configurate() {
       super.configurate()
    }
}
