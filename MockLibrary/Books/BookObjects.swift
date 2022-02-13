//
//  BookObjects.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 01/02/22.
//

import Foundation

import UIKit


class BookObject{
    var bookCategory : [Category]?
    var typeCategory : String?
    
    init(bookCategory : [Category], typeCategory : String){
        self.bookCategory = bookCategory
        self.typeCategory = typeCategory
    }
}

class Category{
    var categoryName : String?
    var bookInfo : [Book]?
    
    init(categoryName : String?, bookInfo : [Book]){
        self.categoryName = categoryName
        self.bookInfo = bookInfo
    }
}

class Book{
    var bookTitle : String?
    var author : String?
    var category : String?
    var price : Float?
    var rate : String?
    var description : String?
    var frontPageBook : String?
    
    init(bookTitle: String, author: String, category: String, price: Float, rate: String, description: String, frontPageBook: String){
        
        self.bookTitle = bookTitle
        self.author = author
        self.category = category
        self.price = price
        self.rate = rate
        self.description = description
        self.frontPageBook = frontPageBook
    }
}
