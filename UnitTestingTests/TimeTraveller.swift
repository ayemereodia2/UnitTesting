//
//  TimeTraveller.swift
//  UnitTestingTests
//
//  Created by Ayemere  Odia  on 19/12/2019.
//  Copyright © 2019 Ayemere  Odia . All rights reserved.
//

import Foundation

class TimeTraveller{
    
    var date:Date
    
    init(date:Date = Date()){
        self.date = date
    }
    
    func generateDate()->Date{
        return date
    }
    
    func timeTravelBy(seconds:TimeInterval){
        date = date.addingTimeInterval(seconds)
    }
    
    func timeTravelBy(days:Int){
        date = Calendar.current.date(byAdding: .day, value: days, to: date)!
    }
}
