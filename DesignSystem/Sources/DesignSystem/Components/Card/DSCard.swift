//
//  DSCard.swift
//  DesignSystem
//
//  Created by Humberto Arambulo on 20/04/2026.
//

import UIKit

public final class DSCard: UIView {

    public let contentView = UIView()

    public init() {
        super.init(frame: .zero)
        setup()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = DSColor.surface
        layer.cornerRadius = 16
        layer.borderWidth = 1
        layer.borderColor = DSColor.border.cgColor

        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.08
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 8
        layer.masksToBounds = false

        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)

        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: DSSpacing.md),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: DSSpacing.md),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -DSSpacing.md),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -DSSpacing.md)
        ])
    }
}
