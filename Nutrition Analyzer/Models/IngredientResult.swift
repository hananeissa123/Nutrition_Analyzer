//
//  IngredientResult.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import ObjectMapper

class IngredientResult: BaseModel {
    
    var text = ""
    var parsed: [Ingredient] = []
    override func mapping(map: Map) {
        super.mapping(map: map)
        text <- map["text"]
        parsed <- map["parsed"]
    }
    
}
