//
//  Floor.swift
//  Hallwaze
//
//  Created by Alimah Granieri (student LM) on 3/23/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import Foundation

class Floor{
    var groundFloor: [[Int]]

    //    0 = hallway
    //    -100 = bathroom
    //    -200 = stairs
    //    -30 = stairs and elevator
    //    -40 = pool
    init(){
        groundFloor = [[nil ,-200, 005,005 ,-100,-100,-100,-100,009 ,008 ,007 ,nil ,nil ,-200,nil,nil,nil],
                       [-13 ,   0,   0,  0 ,   0,   0,   0,   0,  0 ,  0 ,  0 ,  0 ,  0 ,   0,nil,nil,nil],
                       [-12 , -40, -40,-40 ,   0, 004, 003, 001,001 ,001 ,001 ,028 ,  0 ,   0,nil,nil,nil],
                       [nil , -40, -40,-40 ,   0, 002, 002, 001,001 ,001 ,001 ,  0 ,  0 ,   0,nil,nil,nil],
                       [nil , -40, -40,-40 ,   0, 002, 002, 001,001 ,001 ,001 ,029 ,  0 ,   0,nil,nil,nil],
                       [-11 , -40, -40,-40 ,   0, nil, nil, 001,001 ,001 ,001 ,-200,  0 ,   0,nil,nil,nil],
                       [nil ,-100,nil ,-100,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  0,  0,  0],
                       [-10 ,   0,   0,   0,   0,  19,  19,  21,  21,  21,  22,  -3, nil,-100, 23, 24,-30],
                       [nil ,nil ,nil ,nil ,nil ,nil ,nil ,  21,  21,  -4,nil ,nil ,nil ,nil ,nil,nil,nil],
                       [nil ,nil ,nil ,nil ,nil ,nil ,nil ,  -5, nil,nil ,nil ,nil ,nil ,nil ,nil,nil,nil]]

    }
}
