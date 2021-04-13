//
//  ColorPicker.swift
//  DrawingPad
//
//  Created by Daniel Mandea on 19.07.19.
//  Copyright © 2021 Daniel Mandea. All rights reserved.
//

import SwiftUI

struct ColorPicker: View {
    @Binding var color: Color
    @Binding var colorPickerShown: Bool
    
    private let colors = ColorsProvider.supportedColors()
    
    var body: some View {
        List(colors) { colorInfo in
            ColorEntry(colorInfo: colorInfo).onTapGesture {
                self.color = colorInfo.color
                self.colorPickerShown = false
            }
        }
    }
}
