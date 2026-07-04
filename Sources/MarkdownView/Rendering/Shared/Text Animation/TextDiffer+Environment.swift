//
//  TextDiffer+Environment.swift
//  MarkdownView
//
//  Created by Codex on 2026/7/4.
//

import SwiftUI

// MARK: - SwiftUI Environment Value

struct TextDifferEnvironmentKey: EnvironmentKey {
    static let defaultValue: any TextDiffer = .standard
}

extension EnvironmentValues {
    var textDiffer: any TextDiffer {
        get { self[TextDifferEnvironmentKey.self] }
        set { self[TextDifferEnvironmentKey.self] = newValue }
    }
}

