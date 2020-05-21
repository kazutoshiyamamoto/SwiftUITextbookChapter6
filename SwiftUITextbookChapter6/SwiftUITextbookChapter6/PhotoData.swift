//
//  PhotoData.swift
//  SwiftUITextbookChapter4
//
//  Created by home on 2020/04/28.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

// 写真データを配列に入れる
var photoArray: [PhotoData] = makeData()

struct PhotoData: Identifiable {
    var id: Int
    var imageName: String
    var title: String
}

func makeData() -> [PhotoData] {
    var dataArray: [PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "city", title: "街"))
    dataArray.append(PhotoData(id: 2, imageName: "sea", title: "海"))
    
    return dataArray
}


