//
//  BaseViewModel.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//


import RxSwift
import RxRelay

class BaseViewModel {
    
    // MARK: - Variables
    
    let disposeBag = DisposeBag()
    let error = PublishRelay<Error>()
    let isLoading = BehaviorRelay(value: false)
}
