//
//  BottomSheetNavigationPullBar.swift
//  BottomSheet
//
//  Created by Mikhail Maslo on 14.11.2021.
//  Copyright © 2021 Joom. All rights reserved.
//

import UIKit

public extension BottomSheetPresentationController {
    final class PullBar: UIView {
        enum Style {
            static let size = CGSize(width: 40, height: 4)
        }

        private let centerView: UIView = {
            let view = UIView()
            view.frame.size = Style.size
            view.backgroundColor = UIColor(red: 0.84, green: 0.85, blue: 0.87, alpha: 1.00)
            view.layer.cornerRadius = Style.size.height * 0.5
            return view
        }()

        init() {
            super.init(frame: .zero)

            backgroundColor = .clear

            setupSubviews()
        }

        required init?(coder: NSCoder) {
            preconditionFailure("init(coder:) has not been implemented")
        }

        private func setupSubviews() {
            addSubview(centerView)
        }

        public override func layoutSubviews() {
            super.layoutSubviews()

            centerView.center = bounds.center
        }
    }
}
