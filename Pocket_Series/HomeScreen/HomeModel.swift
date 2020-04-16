//
//  HomeModel.swift
//  Pocket_Series
//
//  Created by Влад on 15.04.2020.
//  Copyright © 2020 Artur Sardaryan. All rights reserved.
//

import Foundation
struct listArr:Codable{
    struct list: Codable {
        let title: String
        let year: String
        let score: String
        let genre: String
        let poster: String
    }
    let series:[list]
}
