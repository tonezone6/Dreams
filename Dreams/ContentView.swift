
import DreamsDesign
import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Rectangle()
        .fill(.dreamsSilver.gradient)
        .ignoresSafeArea()
      Text("Hello, Dreams!")
        .foregroundStyle(.dreamsGold)
        .underline(color: .dreamsTeal)
        .font(.dreams(size: 40, weight: .medium))
    }
  }
}

#Preview {
  ContentView()
}
