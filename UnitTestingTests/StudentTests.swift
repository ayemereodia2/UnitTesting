//
//  StudentTests.swift
//  UnitTestingTests
//
//  Created by Ayemere  Odia  on 17/12/2019.
//  Copyright © 2019 Ayemere  Odia . All rights reserved.
//

import Foundation
import XCTest
@testable import UnitTesting

class StudentTests:XCTestCase{
    
    
    func testInValidFirstName(){
        
        let student = Student(Fname: "Aj", Lname: "Test")
        
        XCTAssertFalse(student.validFirstName())
        
    }
    
    func testValidLastName(){
        
        let student = Student(Fname: "Aj", Lname: "Test")
        
        XCTAssertTrue(student.validLastName())
    }
    
    func testAddFriend(){
        let student = Student(Fname: "Odia", Lname: "Ayemere")
        
        let greg = Student(Fname: "Greg", Lname: "Olya")
        
        
        student.addFriend(newfriend: greg)
        
        XCTAssertTrue(student.friend.count > 0)
    }
    
    func testHelloWorld(){
        
        var hellomsg:String?
        
        XCTAssertNil(hellomsg)
        
        hellomsg = "Hello World!"
        
        XCTAssertEqual(hellomsg, "Hello World!")
    }
    
    func testSquareInt(){
        let value = 3
        
       XCTAssertEqual(value.square(), 9)
    }
}
