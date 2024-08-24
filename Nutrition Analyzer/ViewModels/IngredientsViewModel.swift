//
//  IngredientsViewModel.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import RxSwift
import RxRelay

class IngredientsViewModel: BaseViewModel {
    
    // MARK: - Variables
    
    let ingredients: BehaviorRelay<String> = .init(value: "")
    let results: PublishRelay<NutritionAnalysisResult> = .init()
    
    // MARK: - Functions
    public func analize() {
        isLoading.accept(true)

        analize(ingredients: ingredients.value)
            .subscribe { [weak self] results in
                guard let self = self else { return }
                
                print(results.toJSON())
                self.isLoading.accept(false)
                guard results.calories > 0 else {
                    return self.error.accept(NSError.init(error: "We cannot calculate the nutrition for some ingredients. Please check the ingredient spelling or if you have entered a quantities for the ingredients.", code: -1))
                }
                self.results.accept(results)
            } onFailure: {[weak self] error in
                guard let self = self else { return }
                self.isLoading.accept(false)
                self.error.accept(error)
            }.disposed(by: disposeBag)
    }
    
     func analize(ingredients: String) -> Single<NutritionAnalysisResult> {
        return AnalyzerAPI.analize(ingredients: ingredients)
    }
}
