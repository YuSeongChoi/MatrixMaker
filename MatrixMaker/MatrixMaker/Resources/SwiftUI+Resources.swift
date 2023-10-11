//
//  SwiftUI+Resources.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/10.
//

import SwiftUI

import RswiftResources

extension RswiftResources.ImageResource {
    var swiftImage: Image {
        .init(self)
    }
}

extension RswiftResources.ColorResource {
    var swiftColor: Color {
        .init(self)
    }
}

extension FontResource {
    func swiftFontOfSize(_ size: CGFloat) -> Font {
        .custom(self, size: size)
    }
}

extension Label where Title == Text, Icon == Image {
    init(_ title: LocalizedStringKey, image: ImageResource) {
        self.init {
            return Text(title)
        } icon: {
            return Image(image)
        }
    }
}
