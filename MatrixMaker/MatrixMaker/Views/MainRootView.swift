//
//  MainRootView.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/10.
//

import SwiftUI

struct MainRootView: View {
    
    typealias TabItemType = Constants.HomeTabItem
    @State private var tabSelection: TabItemType = .home
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tag(TabItemType.home)
                .tabItem {
                    Label("홈", systemImage: "house.fill")
                }
            
            SettingView()
                .tag(TabItemType.setting)
                .tabItem {
                    Label("설정", systemImage: "gearshape")
                }
        }
        .tint(.black)
    }
    
}

#Preview {
    MainRootView()
}
