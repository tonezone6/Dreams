//
// Dreams
//

import Foundation

public enum Dreams {
  
  enum Name: String, CaseIterable {
    case dreamsBold    = "DreamsNoteDemo-Bold"
    case dreamsLight   = "DreamsNoteDemo-Light"
    case dreamsMedium  = "DreamsNoteDemo-Medium"
    case dreamsRegular = "DreamsNoteDemo-Regular"
  }
  
  public enum Weight {
    case bold, light, medium, regular
  }
  
  public enum Font {
    case dreams(size: CGFloat, weight: Weight)
    
    var name: String {
      switch self {
      case .dreams(_, let weight):
        switch weight {
        case .bold:
          return Name.dreamsBold.rawValue
        case .light:
          return Name.dreamsLight.rawValue
        case .medium:
          return Name.dreamsMedium.rawValue
        case .regular:
          return Name.dreamsRegular.rawValue
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
}
