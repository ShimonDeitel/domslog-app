import SwiftUI

enum Theme {
    static let background = Color(hex: "#20140F")
    static let foreground = Color(hex: "#F6ECE4")
    static let accent = Color(hex: "#C97B4A")
    static let accentSecondary = Color(hex: "#5C8A6A")

    static var titleFont: Font { .system(.title2, design: .serif).weight(.bold) }
    static var bodyFont: Font { .system(.body, design: .serif) }
    static var captionFont: Font { .system(.caption, design: .serif) }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
