//
//  NYCHighSchoolViewModel.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import Foundation

class NYCHighSchoolViewModel: NSObject {
    
    // MARK: Whenever the school array get updated it called its binding closure to update the controller.
    private(set) var schools : [NYCHighSchoolModel]! {
        didSet {
            self.bindSchoolViewModelToController()
        }
    }
    
    //  MARK: Binding Closure
    var bindSchoolViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        getHighSchoolsData()
    }
    
    // MARK: API Calling and then it sets schools array.
    private func getHighSchoolsData() {
        API.shared.getNewYorkCities { schools in
            self.schools = schools
            
        }
    }
}
