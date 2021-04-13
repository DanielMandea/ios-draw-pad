//
//  ActionButton.swift
//  DrawingPad
//
//  Created by Daniel on 13.04.2021.
//  Copyright © 2021 Mitrevski. All rights reserved.
//

import Foundation
import SwiftUI

struct ActionButton: View {
    
    var action: () -> Void
    var key: LocalizedStringKey
    
    ///   - comment: Contextual information about this key-value pair.
    init(action: @escaping () -> Void, _ key: LocalizedStringKey) {
        self.action = action
        self.key = key
    }
    
    var body: some View {
        Button(action: action) {
            Text(key)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
        }
        .background(Color.black)
        .cornerRadius(40)
        .padding([.leading, .trailing], 20)
        
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(action: {
            print("Here")
        }, "Register")
    }
}
