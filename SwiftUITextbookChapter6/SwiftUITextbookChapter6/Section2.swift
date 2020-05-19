//
//  Section2.swift
//  SwiftUITextbookChapter6
//
//  Created by home on 2020/05/19.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section2: View {
    @State var isSheet: Bool = false
    
    var body: some View {
        Button(action: {
            self.isSheet = true
        }) {
            Text("Action Sheet テスト")
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("タイトル"),
                        message: Text("メッセージ文"),
                        buttons: [
                            .default(Text("ボタン1"), action: {}),
                            .default(Text("ボタン2"), action: {}),
                            .destructive(Text("削除"), action: {}),
                            .cancel(Text("キャンセル"), action: {})
            ])
        }
    }
}

struct Section2_Previews: PreviewProvider {
    static var previews: some View {
        Section2()
    }
}
