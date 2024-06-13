import SwiftUI
import LaTeXSwiftUI


struct ContentView: View {
    @State private var inputText = "Hello, $\\LaTeX$!"
    
    @State private var isClicked = false
    
    var body: some View {
        NavigationSplitView {
            List {
                Text("Item1")
                Text("Item2")
                Text("Item3")
            }
            .foregroundColor(.white) // 見やすくするため文字色を白にする
            .scrollContentBackground(.hidden)
            .background(Color.cyan.gradient)
        } detail: {
            VStack{
                TextField("edit Text", text: $inputText, axis: .vertical)
                LaTeX(inputText)
                    .fontDesign(.serif)
                    .foregroundColor(.blue)
                Button {
                    inputText = inputText + "$\\sum$"
                } label: {
                    LaTeX("$\\sum$")
                }
                Button {
                    inputText = inputText + "$\\cap$"
                } label: {
                    LaTeX("$\\cap$")
                }
                Button {
                    inputText = inputText + "$\\bigcap$"
                } label: {
                    LaTeX("$\\bigcap$")
                }

                Button {
                    inputText = inputText + "$\\cup$"
                } label: {
                    LaTeX("$\\cup$")
                }
                Button {
                    inputText = inputText + "$\\bigcup$"
                } label: {
                    LaTeX("$\\bigcup$")
                }
                Button {
                    inputText = inputText + "$\\div$"
                } label: {
                    LaTeX("$\\div$")
                }
                Button {
                    inputText = inputText + "$\\frac{a}{b}$"
                } label: {
                    LaTeX("$\\frac{a}{b}$")
                }
                Button {
                    inputText = inputText + "$\\cos x$"
                } label: {
                    LaTeX("$\\cos x$")
                }
                Button {
                    inputText = inputText + "$\\sin x$"
                } label: {
                    LaTeX("$\\sin x$")
                }
                Button {
                    inputText = inputText + "$\\log x$"
                } label: {
                    LaTeX("$\\log x$")
                }
                Button {
                    inputText = inputText + "$\\log_A x$"
                } label: {
                    LaTeX("$\\log_A x$")
                }

            }
        }
    }
}



#Preview {
    ContentView()
}
