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
            // MARK: iOS16+ 뷰 전환 방식
//            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
//            windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .landscape))
            AppDelegate.orientationLock = .landscape
        }
        .onDisappear {
            AppDelegate.orientationLock = .portrait
        }
    }
    
    @ViewBuilder
    private var positionView: some View {
        VStack {
            R.image.top.swiftImage
                .resizable()
                .frame(width: 36, height: 36)
            R.image.jgl.swiftImage
                .resizable()
                .frame(width: 36, height: 36)
            R.image.mid.swiftImage
                .resizable()
                .frame(width: 36, height: 36)
            R.image.bot.swiftImage
                .resizable()
                .frame(width: 36, height: 36)
            R.image.spt.swiftImage
                .resizable()
                .frame(width: 36, height: 36)
        }
        .background(Color.gray.opacity(0.5))
    }
    
}
