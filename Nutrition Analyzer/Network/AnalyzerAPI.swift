//
//  AnalyzerAPI.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import ESNetworkManager
import RxSwift
import Alamofire

public class AnalyzerAPI {
    class func analize(ingredients: String) -> Single<NutritionAnalysisResult> {
        let encodedstring = ingredients.addingPercentEncoding( withAllowedCharacters: .urlQueryAllowed)!
        let request = ESNetworkRequest("nutrition-details",ingredients: encodedstring)
        request.encoding = JSONEncoding.default
        request.method = .get
        return NetworkManager.execute(request: request)
    }
}
