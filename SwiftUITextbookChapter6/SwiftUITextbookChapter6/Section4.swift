//
//  Section4.swift
//  SwiftUITextbookChapter6
//
//  Created by home on 2020/05/21.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section4: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(photoArray) { photoData in
                    PhotoView(photo: photoData)
                }
            }
        }
    }
}

struct Section4_Previews: PreviewProvider {
    static var previews: some View {
        Section4()
//        PhotoView(photo: photoArray[0])
    }
}

struct PhotoView: View {
    var photo: PhotoData
    let w: CGFloat = UIScreen.main.bounds.width - 100.0
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: w, height: w)
                .clipped()
            Text(photo.title).padding()
        }
        .padding()
        .background(Color(red: 0.9, green: 0.9, blue: 0.7))
        .cornerRadius(8.0)
    }
}
