//
//  API.swift
//  20220916-AA-NYCSchools
//
//  Created by Ammar Ali on 9/16/22.
//

import Foundation
import UIKit

// MARK: Generic Class for Calling Api with URL Session as they get better with Swift 5. We can still use AFNetworking Pod for API Calling with SwiftyJSON to parse the data but instead I pereferd to use Apple own Class.

class API: NSObject {
    
    static let shared: API = {
        let instance = API()
        return instance
    }()

    // MARK: Using Completion Handler in asynchronous functions is useful such as API Calling. As it will provide you the call back whenever the task is completed such as when the API return a response. We use closure for completion handler so that when the function returns after it starts the operation, but the closure isn't called until the operation is completed—the closure needs to escape, to be called later.
    
    func getNewYorkCities(completion: @escaping ([NYCHighSchoolModel]) -> ()) {
        let apiURL = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")!
        URLSession.shared.dataTask(with: apiURL) { data, response, error in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let schoolsModel = try! jsonDecoder.decode([NYCHighSchoolModel].self, from: data)
                let schools = schoolsModel
                completion(schools)
            }
        }.resume()
    }
    
    func getSATScores(completion: @escaping ([SATScoreModel]) -> ()) {
        let apiURL = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json")!
        URLSession.shared.dataTask(with: apiURL) { data, response, error in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let satScoresModel = try! jsonDecoder.decode([SATScoreModel].self, from: data)
                let satScores = satScoresModel
                completion(satScores)
            }
        }.resume()
    }
}
