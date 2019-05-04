//
//  FieldSurveyJSONloader.swift
//  Field Survey
//
//  Created by Eric Mitchell on 5/4/19.
//  Copyright © 2019 Eric Mitchell. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    class func load(fileName: String) -> [FieldSurvey] {
        var surveys = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            surveys = FieldSurveyJSONParser.parse(data)
        }
        
        return surveys
    }
}
