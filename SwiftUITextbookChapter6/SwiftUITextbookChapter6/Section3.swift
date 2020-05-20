//
//  Section3.swift
//  SwiftUITextbookChapter6
//
//  Created by home on 2020/05/20.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section3: View {
    @State var isModal: Bool = false
    
    var body: some View {
        Button(action: {
            self.isModal = true
        }) {
            Text("Sheet テスト")
        }
        .sheet(isPresented: $isModal) {
            SomeView()
        }
    }
}

struct Section3_Previews: PreviewProvider {
    static var previews: some View {
        Section3()
    }
}

struct SomeView: View {
    var body: some View {
        VStack {
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large).padding()
        }
    }
}
