//
//  top.swift
//  piramids
//
//  Created by Macbook on 06.06.2022.
//

import SwiftUI

struct top: View {
    
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        GeometryReader {
            geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let middle = size / 2
            let nearLine = size * 0.1
//            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: middle / 1.55, y: middle * 0.9))
                path.addLine(to: CGPoint(x: middle * 1.35, y: middle * 0.9))
                path.addLine(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle / 1.55, y: middle * 0.9))
            }
            .fill(LinearGradient(colors: [.red, .orange], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 1.0)))
        }
    }
}

struct top_Previews: PreviewProvider {
    static var previews: some View {
        top(width: 200, height: 200)
           
    }
}
