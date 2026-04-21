//
//  ViewController.swift
//  ios-design-system
//
//  Created by Humberto Arambulo on 20/04/2026.
//

import UIKit
import DesignSystem

final class ViewController: UIViewController {

    private let primaryButton = DSButton(
        title: "Continue",
        style: .primary,
        size: .large
    )

    private let card = DSCard()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DSColor.background
        setupLayout()
    }

    private func setupLayout() {
        view.addSubview(card)
        card.contentView.addSubview(primaryButton)

        primaryButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            card.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            card.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: DSSpacing.md),
            card.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -DSSpacing.md),

            primaryButton.topAnchor.constraint(equalTo: card.contentView.topAnchor),
            primaryButton.leadingAnchor.constraint(equalTo: card.contentView.leadingAnchor),
            primaryButton.trailingAnchor.constraint(equalTo: card.contentView.trailingAnchor),
            primaryButton.bottomAnchor.constraint(equalTo: card.contentView.bottomAnchor)
        ])
    }
}

