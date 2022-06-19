

import SwiftUI


struct ContentView: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        GeometryReader {
            geometry in
            let width = geometry.size.width
            let height = geometry.size.height

    VStack{
        ZStack{
            top(width: width, height: height)
            middle(width: width, height: height)
                .offset(y: isAnimated ? 0 : 50)
                .animation(.default)
            base(width: width, height: height)
                .offset(y: isAnimated ? 0 : 100)
                .animation(.default)
       }.padding(.vertical)
        Button(isAnimated ? "Expand" : "Collaps") {
            isAnimated.toggle()
        }
        .frame(width: 200, height: 100)
        .foregroundColor(.blue)
        }
        }
    }
        
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(LinearGradient(colors: [.white, .gray], startPoint: UnitPoint(x: 0.0, y: 1.0), endPoint: UnitPoint(x: 1.0, y: 0.0)))
    }
}
