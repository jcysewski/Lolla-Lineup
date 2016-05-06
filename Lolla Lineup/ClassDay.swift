//
//  ClassDay.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/20/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class ClassDay: NSObject
{
    var dayOne : String
    var dayTwo : String
    var dayThree : String
    var dayFour : String
    
    override init()
    {
        dayOne = ""
        dayTwo = ""
        dayThree = ""
        dayFour = ""
    }
    
    
    
    
    init(DayOne: String, DayTwo: String, DayThree: String, DayFour: String) //convinence initializers makes objects of the SuperheroClass
    {
        // super.init()
        
        dayOne = DayOne
        dayTwo = DayTwo
        dayThree = DayThree
        dayFour = DayFour
        
        
    }


}
