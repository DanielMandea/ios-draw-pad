//
//  DrawContinerView.swift
//  DrawingPad
//
//  Created by Daniel Mandea on 20.07.19.
//  Copyright © 2021 Daniel Mandea. All rights reserved.
//

import SwiftUI

public struct DrawContinerView: View {
    @State private var currentDrawing: Drawing = Drawing()
    @State private var drawings: [Drawing] = [Drawing]()
    @State private var color: Color = Color.black
    @State private var lineWidth: CGFloat = 3.0
    
    public var saveAction: (UIImage) -> Void
    
    public var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Sign")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .padding()
                Spacer()
                DrawingControls(color: $color, drawings: $drawings, lineWidth: $lineWidth) { saveAction(drawingPad.snapshot()) }
                    .padding()
            }
            drawingPad
        }
        .accentColor(.black)
        .background(Color.white, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
    
    // Create drawing pad
    var drawingPad: some View {
        DrawingPad(currentDrawing: $currentDrawing,
                   drawings: $drawings,
                   color: $color,
                   lineWidth: $lineWidth)
            .cornerRadius(40)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DrawContinerView(saveAction: { view in
                
            })
        }
    }
}
