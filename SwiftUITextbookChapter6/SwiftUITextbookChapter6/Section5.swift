//
//  Section5.swift
//  SwiftUITextbookChapter6
//
//  Created by home on 2020/05/29.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section5: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
            }
            .tag(0)
            
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
            }
            .tag(1)
            
            Text("Third View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("third")
                        Text("Third")
                    }
            }
            .tag(2)
        }
    }
}

struct Section5_Previews: PreviewProvider {
    static var previews: some View {
        Section5()
    }
}
