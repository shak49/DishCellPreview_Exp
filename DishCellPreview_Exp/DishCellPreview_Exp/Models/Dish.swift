//
//  Dish.swift
//  DishCellPreview_Exp
//
//  Created by Shak Feizi on 8/2/22.
//

import Foundation


struct Dish: Hashable {
    let name: String
    let price: Double
    let imageURL: String
}

extension Dish {
    static func all() -> [Dish] {
        let dishes = [
            Dish(name: "Vegie Pizza", price: 15, imageURL: "001"),
            Dish(name: "Filet Mignon", price: 35, imageURL: "002"),
            Dish(name: "Sushi", price: 55, imageURL: "003"),
            Dish(name: "Hamburger", price: 10, imageURL: "004"),
            Dish(name: "Salmon Fish", price: 45, imageURL: "005")
        ]
        return dishes
    }
}
