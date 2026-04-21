//
//  DSTextField.swift
//  DesignSystem
//
//  Created by Humberto Arambulo on 20/04/2026.
//

import Foundation
import UIKit

public final class DSTextField: UITextField {

    private let horizontalPadding: CGFloat = DSSpacing.md

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        borderStyle = .none
        backgroundColor = DSColor.surface
        textColor = DSColor.textPrimary
        font = DSTypography.body
        tintColor = DSColor.primary

        layer.cornerRadius = 12
        layer.borderWidth = 1
        layer.borderColor = DSColor.border.cgColor

        heightAnchor.constraint(equalToConstant: 48).isActive = true
    }

    public override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.insetBy(dx: horizontalPadding, dy: 0)
    }

    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.insetBy(dx: horizontalPadding, dy: 0)
    }

    public override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.insetBy(dx: horizontalPadding, dy: 0)
    }
}
