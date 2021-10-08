//
//  File.swift
//  Recipe List App
//
//  Created by Filippo Monti on 08/10/21.
//

import Foundation

class Ingredient :Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
