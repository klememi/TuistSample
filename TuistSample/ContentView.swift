import Framework
import Resolver
import SwiftUI

struct ContentView: View {

	init() {
		foo()
	}

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
			Text(Resolver.resolve(String.self))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
