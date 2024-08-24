//
//  NutritionAnalysisResult.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import Foundation

import ObjectMapper

class NutritionAnalysisResult: BaseModel {
    
    var calories: Float = 0
    var totalWeight: Float = 0
    var totalNutrients: [String: NutrientInfo] = [:]
    var totalDaily: [String: NutrientInfo] = [:]
    var totalNutrientsKCal: [String: NutrientInfo] = [:]
    var ingredientResult: [IngredientResult] = []

    override func mapping(map: Map) {
        super.mapping(map: map)
        calories <- map["calories"]
        totalWeight <- map["totalWeight"]
        totalNutrients <- map["totalNutrients"]
        totalDaily <- map["totalDaily"]
        totalNutrientsKCal <- map["totalNutrientsKCal"]
        ingredientResult <- map["ingredients"]
    }
    
}
extension Dictionary where Key == String, Value: NutrientInfo {
    subscript(_ key: NutrientsCode) -> Value? {
        return self[key.rawValue]
    }
}
