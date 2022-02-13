//
//  BookData.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 06/02/22.
//

import Foundation

struct BookData: Decodable {
    let docs : [Docs]
}

struct Docs: Decodable{
    let title: String?
    let authorKey: [String]?
    let authorName: [String]?
    
}
