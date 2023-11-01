//
// Dreams
//

import Foundation

enum DreamsFontName: String, CaseIterable {
  case dreamsBold = "DreamsNoteDemo-Bold"
  case dreamsLight = "DreamsNoteDemo-Light"
  case dreamsMedium = "DreamsNoteDemo-Medium"
  case dreamsRegular = "DreamsNoteDemo-Regular"
}

public enum DreamsFontWeight {
  case bold, light, medium, regular
}

public enum DreamsFont {
  case dreams(size: CGFloat, weight: DreamsFontWeight)
  
  var name: String {
    switch self {
    case .dreams(_, let weight):
      switch weight {
      case .bold:
        return DreamsFontName.dreamsBold.rawValue
      case .light:
        return DreamsFontName.dreamsLight.rawValue
      case .medium:
        return DreamsFontName.dreamsMedium.rawValue
      case .regular:
        return DreamsFontName.dreamsRegular.rawValue
      }
    }
  }
  
  var size: CGFloat {
    switch self {
    case .dreams(let size, _):
      return size
    }
  }
}

