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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DSColor.background
        setupLayout()
    }

    private func setupLayout() {
        view.addSubview(primaryButton)
        primaryButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            primaryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            primaryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

