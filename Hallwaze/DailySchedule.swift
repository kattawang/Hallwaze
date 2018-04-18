//
//  DailySchedule.swift
//  Hallwaze
//
//  Created by Alimah Granieri (student LM) on 4/2/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import UIKit

class DailySchedule{

    var times: [String]
    var sets: [String]

    init(){
       

        times = ["7:30 - 8:30","8:35 - 9:31","9:36 - 10:32", "10:37 - 11:40","11:45 - 12:40","12:45 - 1:40","1:45 - 2:40"]
        sets = [""]
        
        
//        .frame = CGRect(x: x , y: y , width: imageWidth, height: imageWidth)
    }
    
    func times(choice: Int){
        //2hr delay
        if choice == 0{
            times = ["9:30 - 10:06","10:11 - 10:47","10:52 - 11:28", "11:33 - 12:37","12:42 - 1:18","1:23 - 1:59","2:04 - 2:40"]
            if sets[0] == "1"{
                sets.remove(at: 4)
            }

        }
        //normal
        else if choice == 1{
            times = ["7:30 - 8:30","8:35 - 9:31","9:36 - 10:32", "10:37 - 11:40","11:45 - 12:40","12:45 - 1:40","1:45 - 2:40"]
        }
        //1/2 day
        else if choice == 2{
            times = ["7:30 - 8:04","8:09 - 8:43","8:48 - 9:22", "","9:27 - 10:01","10:06 - 10:40","10:45 - 11:20"]
        }
    }
    
    func sets(day: Int){
        //A day
        if day == 0{
            sets = ["1","2","3", "L+L","Advisory","5","6","7"]
            times = ["7:30 - 8:25","8:30 - 9:22","9:27 - 10:19", "10:24 - 11:27","11:32 - 11:27", "11:57 - 12:48","12:53 - 1:44","1:49 - 2:40"]
        }
        //B day
        else if day == 1{
            sets = ["4","1","2", "L+L","8","5","6"]

        }
        //C day
        else if day == 2{
            sets = ["3","4","1", "L+L","7","8","5"]

        }
        //D day
        else{
            sets = ["2","3","4", "L+L","6","7","8"]

        }
    }
}

