//
//  Ingredient.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import ObjectMapper

class Ingredient: BaseModel {
    
    var quantity: Int = 0
    var weight: Float = 0
    var calories: Float = 0
    var measure: String = ""
    var food: String = ""
    var foodMatch: String = ""

    override func mapping(map: Map) {
        super.mapping(map: map)
        quantity <- map["quantity"]
        weight <- map["weight"]
        calories <- map["nutrients.ENERC_KCAL.quantity"]
        measure <- map["weight"]
        food <- map["food"]
        foodMatch <- map["foodMatch"]
        measure <- map["measure"]
    }

}
