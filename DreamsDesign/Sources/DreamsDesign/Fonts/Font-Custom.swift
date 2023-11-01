//
// Font-Custom
//

import SwiftUI

extension Font {
  
  static func load() {
    Dreams.Name.allCases
      .compactMap { Bundle.module.url(forResource: $0.rawValue, withExtension: "ttf") }
      .forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
  }
  
  static func custom(_ font: Dreams.Font, size: CGFloat) -> Font {
    // Load fonts before they can be used.
    Font.load()
    // Call Apple's Font.custom function to use the custom font
    return Font.custom(font.name, size: size)
  }
}

struct FontModifier: ViewModifier {
  let font: Dreams.Font
  
  func body(content: Content) -> some View {
    /// Calling our overloaded implementation of the Font.custom
    /// function, which takes a custom font
    content.font(Font.custom(font, size: font.size))
  }
}

extension View {
  public func font(_ font: Dreams.Font) -> some View {
    self.modifier(FontModifier(font: font))
  }
}

