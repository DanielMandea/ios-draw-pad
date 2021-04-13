//
//  ViewSnapshotExtension.swift
//  DrawingPad
//
//  Created by Daniel on 13.04.2021.
//  Copyright © 2021 Mitrevski. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

extension UIView {
    func asImage() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: self.layer.frame.size, format: format).image { context in
            self.drawHierarchy(in: self.layer.bounds, afterScreenUpdates: true)
        }
    }
}

extension View {
    func asImage(size: CGSize) -> UIImage {
        let controller = UIHostingController(rootView: self)
        controller.view.bounds = CGRect(origin: .zero, size: size)
        controller.view.backgroundColor = UIColor(hex: "#F5F5F5")
        let image = controller.view.asImage()
        return image
    }
}
