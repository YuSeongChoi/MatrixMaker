//
//  MatrixView.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/11.
//

import SwiftUI

import RswiftResources

struct MatrixView: View {
    
    var matrix: Matrix
    
    var body: some View {
        VStack {
            positionView
        }
        .onAppear {
            // MARK: 기존 화면 전환
//            let orientation = UIInterfaceOrientation.landscapeRight.rawValue
//            UIDevice.current.setValue(orientation, forKey: "orientation")
            // MARK: iOS 16+ 화면 전환
//            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
//            windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .landscape))
            AppDelegate.orientationLock = .landscape
        }
    }
    
    @ViewBuilder
    private var positionView: some View {
        VStack {
            R.image.top.swiftImage
                .resizable()
                .frame(width: 40, height: 40)
            R.image.jgl.swiftImage
                .resizable()
                .frame(width: 40, height: 40)
            R.image.mid.swiftImage
                .resizable()
                .frame(width: 40, height: 40)
            R.image.bot.swiftImage
                .resizable()
                .frame(width: 40, height: 40)
            R.image.spt.swiftImage
                .resizable()
                .frame(width: 40, height: 40)
        }
        .background(Color.gray.opacity(0.5))
    }
    
}
