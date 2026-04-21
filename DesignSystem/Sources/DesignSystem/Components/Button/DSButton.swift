//
//  DSButton.swift
//  DesignSystem
//
//  Created by Humberto Arambulo on 20/04/2026.
//

import UIKit

public final class DSButton: UIButton {
    private let style: DSButtonStyle
    private let size: DSButtonSize

    public override var isEnabled: Bool {
        didSet {
            updateEnabledState()
        }
    }

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
        translatesAutoresizingMaskIntoConstraints = false

        applyStyle()
        applySize()
        updateEnabledState()
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
            contentEdgeInsets = UIEdgeInsets(
                top: DSSpacing.xs,
                left: DSSpacing.sm,
                bottom: DSSpacing.xs,
                right: DSSpacing.sm
            )

        case .medium:
            contentEdgeInsets = UIEdgeInsets(
                top: DSSpacing.sm,
                left: DSSpacing.md,
                bottom: DSSpacing.sm,
                right: DSSpacing.md
            )

        case .large:
            contentEdgeInsets = UIEdgeInsets(
                top: DSSpacing.md,
                left: DSSpacing.lg,
                bottom: DSSpacing.md,
                right: DSSpacing.lg
            )
        }
    }

    private func updateEnabledState() {
        alpha = isEnabled ? 1.0 : 0.5
    }
}
