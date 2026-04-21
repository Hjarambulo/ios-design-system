//
//  DSButton.swift
//  DesignSystem
//
//  Created by Humberto Arambulo on 20/04/2026.
//

import Foundation
import UIKit

public final class DSButton: UIButton {
    private let style: DSButtonStyle
    private let size: DSButtonSize

    public init(
        title: String,
        style: DSButtonStyle = .primary,
        size: DSButtonSize = .medium
    ) {
        self.style = style
        self.size = size
        super.init(frame: .zero)
        setup(title: title)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup(title: String) {
        setTitle(title, for: .normal)
        titleLabel?.font = DSTypography.bodyBold
        layer.cornerRadius = 12
        clipsToBounds = true

        applyStyle()
        applySize()
    }

    private func applyStyle() {
        switch style {
        case .primary:
            backgroundColor = DSColor.primary
            setTitleColor(.white, for: .normal)

        case .secondary:
            backgroundColor = DSColor.surface
            setTitleColor(DSColor.textPrimary, for: .normal)
            layer.borderWidth = 1
            layer.borderColor = DSColor.border.cgColor

        case .destructive:
            backgroundColor = DSColor.danger
            setTitleColor(.white, for: .normal)
        }
    }

    private func applySize() {
        switch size {
        case .small:
            contentEdgeInsets = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)

        case .medium:
            contentEdgeInsets = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16)

        case .large:
            contentEdgeInsets = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        }
    }
}
