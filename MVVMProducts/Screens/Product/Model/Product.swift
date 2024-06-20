//
//  Product.swift
//  MVVMProducts
//
//  Created by Syed Faraz Haider Zaidi on 18/06/2024.
//

import Foundation

struct Product : Codable{
    let id : Int
    let title : String
    let price : Double
    let description : String
    let category : String
    let image:String
    let rating: Rate
}

struct Rate : Codable{
    let rate: Double
    let count : Int
}


struct AddProduct:Codable{
    let title : String
    var id: Int? = nil
}
