//
//  Room.swift
//  Hallwaze
//
//  Created by Katherine Wang (student LM) on 2/26/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import Foundation
import UIKit

class Room{
    var setTeacher:[Int:String]
    var image:UIImage
    
    init(setTeachers:[String], image:UIImage){
        self.setTeacher = [Int:String]()
        for x in 0...8{
            self.setTeacher[x] = setTeachers[x]
            
        }
        
        self.image = image
    }
    
    
}


