//
//  Color-Dreams
//  

import SwiftUI

public enum DreamsColor: String, CaseIterable {
  case dreamsGold
  case dreamsSilver
  case dreamsTeal
}

extension Color {
  public init(_ color: DreamsColor) {
    self.init(color.rawValue, bundle: .module)
  }
}

extension ShapeStyle where Self == Color {
  public static var dreamsGold: Color {
    Color(DreamsColor.dreamsGold)
  }
  
  public static var dreamsSilver: Color {
    Color(DreamsColor.dreamsSilver)
  }
  
  public static var dreamsTeal: Color {
    Color(DreamsColor.dreamsTeal)
  }
}
