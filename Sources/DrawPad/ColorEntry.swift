//
//  ColorEntry.swift
//  DrawingPad
//
//  Created by Daniel Mandea on 19.07.19.
//  Copyright © 2021 Daniel Mandea. All rights reserved.
//

import SwiftUI

struct ColorEntry: View {
    let colorInfo: ColorInfo
    
    var body: some View {
        HStack {
            Circle()
                .fill(colorInfo.color)
                .frame(width: 40, height: 40)
                .padding(.all)
            Text(colorInfo.displayName)
        }
    }
}
