//
//  ContentView.swift
//  emmaKadai7
//
//  Created by Emma on 2023/02/15.
//

import SwiftUI

struct ContentView: View {
    //　タブのtagを状態変数にする
    @State private var selectedTab = "addition"

    var body: some View {
        TabView(selection: $selectedTab) {
            //足し算画面
            TabPageView(
                selectedTab: $selectedTab,
                tabLabel: "足し算",
                tabColor: .green,
                tabIcon: "plus.app.fill",
                tabTag: "addition"
            )

            //引き算算画面
            TabPageView(
                selectedTab: $selectedTab,
                tabLabel: "引き算",
                tabColor: .red,
                tabIcon: "minus.square.fill",
                tabTag: "substruction"
            )
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
