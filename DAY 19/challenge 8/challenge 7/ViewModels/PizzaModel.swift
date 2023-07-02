//
//  PizzaModel.swift
//  challenge 7
//
//  Created by Surbhi Goel on 02/07/23.
//

import Foundation

class PizzaModel : ObservableObject{
    
    @Published var pizzaModel = [Pizza]()
    
    init() {
        
        pizzaModel.append(Pizza(name: "margaritta", topping1: "mozzerella", topping2: "chedder", topping3: "cottage cheese"))
        pizzaModel.append(Pizza(name: "pepparoni", topping1: "mozzerella", topping2: "pepperoni", topping3: "oregano"))
        pizzaModel.append(Pizza(name: "farmhouse", topping1: "mushroom", topping2: "capsicum", topping3: "onion"))
        pizzaModel.append(Pizza(name: "pesto", topping1: "basil", topping2: "cherry tomato", topping3: "olive oil"))
    }
    
    func addPineapple() {
        for i in 0...pizzaModel.count-1 {
            pizzaModel[i].topping1 = "Pineapple"
        }
    }
}
