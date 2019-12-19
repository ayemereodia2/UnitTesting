//
//  TrialPeriodTest.swift
//  UnitTestingTests
//
//  Created by Ayemere  Odia  on 19/12/2019.
//  Copyright © 2019 Ayemere  Odia . All rights reserved.
//

import XCTest

//@testable import UnitTesting

class TrialPeriodTest: XCTestCase {
    
    var date:Date!
    var timeTravler:TimeTraveller!
    var trial :TrialPeriod!
    
    override func setUp() {
        super.setUp()
        date = Date()
        timeTravler = TimeTraveller(date: date)
        trial = TrialPeriod(dateGenerator:timeTravler.generateDate)
    }

    
    func testArrangeAssertAct(){
        //Arrange
        let x = 20
        let y = 30
        let expected = 50
        
        //Act
        let actual = x + y
        
        //Assert
        XCTAssertEqual(expected, actual)
    }
    
    func testTrialPeriodInstalledIsToday(){
        //Arrange
//        let expected = Date()
//
//         timeTravler = TimeTraveller(date: expected)
//
//         trial = TrialPeriod(dateGenerator: timeTravler.generateDate)
//
//        //Act
//        let actual = trial.dateInstalled
//        print("Aye Expected time:\(expected.timeIntervalSinceReferenceDate)")
//        print("AYE Actual time:\(actual.timeIntervalSinceReferenceDate)")
        //Assert
        
        XCTAssertEqual(date, trial.dateInstalled)
    }
    
    //by default, defaul duration is 7days
    
    func testTrialPeriodDefaultDurationIs7Days(){
    
        //Assert
        XCTAssertEqual(7, trial.durationInDays)
        
    }
    
    func testTrialPeriodDateExpiredIs7DaysAfterInstallDate(){
        let expected = Calendar.current.date(byAdding: .day, value: 7, to: date)
        
        XCTAssertEqual(expected, trial.dateExpired)
    }
    
    func testTrialPeriodNotExpiredOnStart(){
       
        XCTAssertFalse(trial.isExpired())
    }
    
    func testTrialPeriodAfter7Days(){
        timeTravler.timeTravelBy(days: 7)
        XCTAssertTrue(trial.isExpired())
    }

}
