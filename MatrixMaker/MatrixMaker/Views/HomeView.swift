//
//  HomeView.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/10.
//

import SwiftUI

import RswiftResources

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.matrixList, id: \.self) { matrix in
                NavigationLink {
                    MatrixView(matrix: matrix)
                        .navigationTitle("표 만들기")
                } label: {
                    HStack {
                        Text(matrix.matrixName)
                            .pretendSemiBold(size: 24)
                        Spacer()
                    }
                }
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 22)
        .onAppear {
            AppDelegate.orientationLock = .portrait
            if viewModel.matrixList.isEmpty {
                viewModel.injectSampleData()
            }
        }
    }
    
}
