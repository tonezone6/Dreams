
import DreamsDesign
import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello, Dreams!")
        .foregroundStyle(.dreamsTeal)
        .font(.dreams(size: 40, weight: .medium))
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
