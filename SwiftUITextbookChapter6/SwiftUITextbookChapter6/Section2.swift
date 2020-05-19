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
        }
    }
}

struct Section2_Previews: PreviewProvider {
    static var previews: some View {
        Section2()
    }
}
