//
//  SATScoreViewModel.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import Foundation

class SATScoreViewModel: NSObject {
    
    // MARK: Whenever the SAT Score array get updated it called its binding closure to update the controller.
    private(set) var satScores : [SATScoreModel]! {
        didSet {
            self.bindSATScoreViewModelToController()
        }
    }
    
    //  MARK: Binding Closure
    var bindSATScoreViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        getSATScoreDetail()
    }
    
    // MARK: API Calling and then it sets SAT Score array.
    private func getSATScoreDetail() {
        API.shared.getSATScores { satScores in
            self.satScores = satScores
        }
    }
}
