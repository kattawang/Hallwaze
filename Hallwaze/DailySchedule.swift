//
//  DailySchedule.swift
//  Hallwaze
//
//  Created by Alimah Granieri (student LM) on 4/2/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import UIKit

class DailyScedule{

    var times: [String]
    var date: DateFormatter

    init(view: UIView, choice: Int){
        date = DateFormatter()
        date.dateFormat = "yyyy-MM-dd HH:mm:ss"
        date.timeZone = NSTimeZone.default

        //2hr delay
        if choice == 0{
            times = [""]
        }
        //normal
        else if choice == 1{
            times = [""]
        }
        //1/2 day
        else{
            times = [""]
        }
        
        
//        .frame = CGRect(x: x , y: y , width: imageWidth, height: imageWidth)
    }
}

