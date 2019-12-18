//
//  Student.swift
//  UnitTesting
//
//  Created by Ayemere  Odia  on 17/12/2019.
//  Copyright © 2019 Ayemere  Odia . All rights reserved.
//

import Foundation

class Student{
    
    private let firstName:String
    private let lastName:String
    
    var friend = [Student]()
    
    init(Fname:String, Lname:String){
        self.firstName = Fname
        self.lastName = Lname
    }
    
    
    func addFriend(newfriend:Student){
        friend.append(newfriend)
    }
    
    func validFirstName()->Bool{
        
        return firstName.count > 3
    }
    
    func validLastName()->Bool{
        return lastName.count > 3
    }
}
