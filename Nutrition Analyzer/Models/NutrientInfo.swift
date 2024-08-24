//
//  NutrientInfo.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import ObjectMapper

class NutrientInfo: BaseModel {
    
    var title: String = ""
    var unit: String = ""
    var quantity: Float = 0
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        title <- map["label"]
        unit <- map["unit"]
        quantity <- map["quantity"]
    }
}
