//
//  Recipe.swift
//  challenge 12
//
//  Created by Surbhi Goel on 17/07/23.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var toppings:[String]
}
