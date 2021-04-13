//
//  DrawingControls.swift
//  DrawingPad
//
//  Created by Daniel Mandea on 19.07.19.
//  Copyright © 2021 Daniel Mandea. All rights reserved.
//

import SwiftUI

struct DrawingControls: View {
    @Binding var color: Color
    @Binding var drawings: [Drawing]
    @Binding var lineWidth: CGFloat
    var saveAction: () -> Void
    
    @State private var colorPickerShown = false

    private let spacing: CGFloat = 20
    
    var body: some View {
        HStack() {
            Button(action: {
                if self.drawings.count > 0 {
                    self.drawings.removeLast()
                }
            }) {
                Image(systemName: "arrowshape.turn.up.backward")
            }
            .padding()
            Button(action: {
                self.drawings = [Drawing]()
            }) {
                Image(systemName: "trash")
            }
            .padding()
            Button(action: {
                saveAction()
            }) {
                Image(systemName: "square.and.arrow.down")
            }
            .padding()
        }
    }
}

struct DrawingControls_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DrawingControls(color: .constant(.blue), drawings: .constant([]), lineWidth: .constant(0.2), saveAction: {
                print("Save")
            })
        }
    }
}

