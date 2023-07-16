//
//  Recipe.swift
//  MVVM architecture
//
//  Created by Surbhi Goel on 02/07/23.
//

import Foundation

class Recipe : Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var cuisine = ""
}
