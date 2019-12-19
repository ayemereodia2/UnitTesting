//
//  TrialPeriod.swift
//  UnitTesting
//
//  Created by Ayemere  Odia  on 19/12/2019.
//  Copyright © 2019 Ayemere  Odia . All rights reserved.
//

import Foundation
typealias DateGenerator = ()->Date

class TrialPeriod{
    static let defaultDuration = 7
    var dateInstalled:Date
    var dateGenerator:DateGenerator
    var durationInDays:Int
    var dateExpired:Date{
        return Calendar.current.date(byAdding: .day, value: TrialPeriod.defaultDuration, to: dateInstalled)!
    }

    init(dateGenerator: @escaping DateGenerator){
        self.dateInstalled = dateGenerator()
        self.dateGenerator = dateGenerator
        self.durationInDays = TrialPeriod.defaultDuration
    }
    
    func isExpired()->Bool{
        let currentDate = dateGenerator()
        if currentDate >= dateExpired{
            return true
        }
        return false
    }
}
