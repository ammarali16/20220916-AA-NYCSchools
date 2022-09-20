//
//  SATScoreModel.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import Foundation

// MARK: SAT SCORE DATA CLASS
struct SATScoreModel : Codable {

    let dbn : String?
    let numOfSatTestTakers : String?
    let satCriticalReadingAvgScore : String?
    let satMathAvgScore : String?
    let satWritingAvgScore : String?
    let schoolName : String?


    enum CodingKeys: String, CodingKey {
        case dbn = "dbn"
        case numOfSatTestTakers = "num_of_sat_test_takers"
        case satCriticalReadingAvgScore = "sat_critical_reading_avg_score"
        case satMathAvgScore = "sat_math_avg_score"
        case satWritingAvgScore = "sat_writing_avg_score"
        case schoolName = "school_name"
    }
    
    // MARK: We are populating Data Class from API Response
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dbn = try values.decodeIfPresent(String.self, forKey: .dbn)
        numOfSatTestTakers = try values.decodeIfPresent(String.self, forKey: .numOfSatTestTakers)
        satCriticalReadingAvgScore = try values.decodeIfPresent(String.self, forKey: .satCriticalReadingAvgScore)
        satMathAvgScore = try values.decodeIfPresent(String.self, forKey: .satMathAvgScore)
        satWritingAvgScore = try values.decodeIfPresent(String.self, forKey: .satWritingAvgScore)
        schoolName = try values.decodeIfPresent(String.self, forKey: .schoolName)
    }
}
