//
//  ViewController.swift
//  ios-design-system
//
//  Created by Humberto Arambulo on 20/04/2026.
//

import UIKit
import DesignSystem

final class ViewController: UIViewController {

    private let card = DSCard()

    private let emailTextField: DSTextField = {
        let textField = DSTextField()
        textField.placeholder = "Email"
        return textField
    }()

    private let primaryButton = DSButton(
        title: "Continue",
        style: .primary,
        size: .large
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DSColor.background
        setupLayout()
    }

    private func setupLayout() {
        view.addSubview(card)

        card.contentView.addSubview(emailTextField)
        card.contentView.addSubview(primaryButton)

        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            card.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            card.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: DSSpacing.md),
            card.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -DSSpacing.md),

            emailTextField.topAnchor.constraint(equalTo: card.contentView.topAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: card.contentView.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: card.contentView.trailingAnchor),

            primaryButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: DSSpacing.md),
            primaryButton.leadingAnchor.constraint(equalTo: card.contentView.leadingAnchor),
            primaryButton.trailingAnchor.constraint(equalTo: card.contentView.trailingAnchor),
            primaryButton.bottomAnchor.constraint(equalTo: card.contentView.bottomAnchor)
        ])
    }
}

