//
//  FeedData.swift
//  PhotoDemo
//
//  Created by SHIH-YING PAN on 2019/1/11.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import Foundation

struct Media: Decodable {
    let m: URL
}
struct Item: Decodable {
    let title: String
    let media: Media
}
struct FeedData: Decodable {
    let items: [Item]
}
