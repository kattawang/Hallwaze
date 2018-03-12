//
//  Room.swift
//  Hallwaze
//
//  Created by Katherine Wang (student LM) on 2/26/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import Foundation

class Room{
    var setTeacher:[Int:String]
    
    init(setTeachers:[String]){
        self.setTeacher = [Int:String]()
        for x in 0...8{
            self.setTeacher[x] = setTeachers[x]
        
        }
    }
    
    
}
