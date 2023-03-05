//
//  TabPageView.swift
//  emmaKadai7
//
//  Created by Emma on 2023/02/15.
//

import SwiftUI

struct CalculationlcData {
    //計算要素
    var inputText1: String = ""
    var inputText2: String = ""
    var resultText: Int = 0 // Intだと桁区切りが入る
}

struct TabPageView: View {
    //メインビューで選択されているタブ名
    @Binding var selectedTab: Tab

    //計算要素
    @State private var calculationData = CalculationlcData()

    //タブ要素の変数
    @State var tabLabel: String
    @State var tabColor: Color
    @State var tabIcon: String
    @State var tabTag: Tab


    func calculation(_ inputText1: String, _ inputText2: String) -> Int {
        //タブで計算方法を変えて計算する
        let inputNumber1 = Int(calculationData.inputText1) ?? 0
        let inputNumber2 = Int(calculationData.inputText2) ?? 0

        switch tabTag {
        case .substruction:
            return inputNumber1 - inputNumber2
        case .addition:
            return inputNumber1 + inputNumber2
        }
    }

    // キーボードを下げるための変数
    @FocusState var isInputText1focused: Bool
    @FocusState var isInputText2focused: Bool

    func dismissKeyboard() {
        if isInputText1focused {
            isInputText1focused = false
        } else if isInputText2focused {
            isInputText2focused = false
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                //背景色
                Group{
                    tabColor
                        .ignoresSafeArea(edges: [.top, .horizontal])
                    Color.white.opacity(0.7)
                        .ignoresSafeArea(edges: [.horizontal, .bottom])
                }

                VStack(spacing: 20){

                    //計算タイトル
                    Text("\(tabLabel)")
                        .font(.title2)
                        .foregroundColor(tabColor)
                        .fontWeight(.bold)
                        .padding(.top)

                    //入力欄
                    Group{
                        TextField("", text: $calculationData.inputText1)
                            .focused($isInputText1focused)
                        TextField("", text: $calculationData.inputText2)
                            .focused($isInputText2focused)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: 140)

                    //計算ボタン
                    Button("計算する"){
                        //計算と、キーボードを下げる
                        calculationData.resultText = calculation(calculationData.inputText1, calculationData.inputText2)
                        dismissKeyboard()
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                    //計算結果
                    Text("\(calculationData.resultText)")
                        .font(.title)
                        .foregroundColor(.black)
                    Spacer()
                    Divider()
                        .ignoresSafeArea()
                        .background(tabColor).opacity(0.7)
                }.tint(tabColor)
            }
            //アプリタイトル
            .navigationTitle("課題7 足し算と引き算を行うタブアプリ")
            .navigationBarTitleDisplayMode(.inline)

        }
        //タブのボタンとラベル
        .tabItem {
            Image(systemName: "\(tabIcon)")
            Text("\(tabLabel)")
        }
        //タブのタグ
        .tag("\(tabTag)")
    }
}

struct TabPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabPageView(
            selectedTab: Binding.constant(.addition),
            tabLabel: "足し算",
            tabColor: .yellow,
            tabIcon: "plus.app.fill",
            tabTag: .addition
        )
    }
}
