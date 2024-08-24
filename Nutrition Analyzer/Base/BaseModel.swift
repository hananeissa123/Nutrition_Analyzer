//
//  BaseModel.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import ObjectMapper

public class BaseModel: Mappable {
    public required init?(map: Map) { }
    public func mapping(map: Map) {}
}
