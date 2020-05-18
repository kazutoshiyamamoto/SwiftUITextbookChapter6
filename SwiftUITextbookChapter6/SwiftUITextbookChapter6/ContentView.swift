//
//  ContentView.swift
//  SwiftUITextbookChapter6
//
//  Created by home on 2020/05/18.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: { self.isError = true }) {
            Text("Alertテスト")
        }.alert(isPresented: $isError, content: {
            Alert(title: Text("タイトル"), message: Text("メッセージ文"), dismissButton: .default(Text("OK"), action: {}))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
