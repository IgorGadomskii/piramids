//
//  base.swift
//  piramids
//
//  Created by Macbook on 06.06.2022.
//

import SwiftUI

struct base: View {
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
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: farLine * 0.86, y: farLine - middle / 2))
                path.addLine(to: CGPoint(x: nearLine * 2.2, y: farLine - middle / 2))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
            }
            .fill(LinearGradient(colors: [.green, .blue], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 1.0)))
        }
    }
}

struct base_Previews: PreviewProvider {
    
    static var previews: some View {
        base(width: 300, height: 300)
           
    }
}
