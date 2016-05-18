//
//  DetailBandClass.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/11/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class DetailBandClass: NSObject
{
    var name : String
    var genre : String
    
    var songOneURL : String
    var songTwoURL : String
    var songThreeURL : String
    var songFourURL : String
    var songFiveURL : String
    
    var songOneName : String
    var songTwoName : String
    var songThreeName : String
    var songFourName : String
    var songFiveName : String
    
    var day : String
    //var stage : String
    
    override init()
    {
        name = ""
        genre = ""
        
        songOneURL = ""
        songTwoURL = ""
        songThreeURL = ""
        songFourURL = ""
        songFiveURL = ""
        
        songOneName = ""
        songTwoName = ""
        songThreeName = ""
        songFourName = ""
        songFiveName = ""
        
        day = ""
        //stage = ""
    }
    
    

    
    init(Name: String, Genre: String, SongOneURL: String, SongTwoURL: String, SongThreeURL: String, SongFourURL: String, SongFiveURL: String, SongOneName: String, SongTwoName: String, SongThreeName: String, SongFourName: String, SongFiveName: String, Day: String) //convinence initializers makes objects of the SuperheroClass
    {
       // super.init()
        name = Name
        genre = Genre
        
        songOneURL = SongOneURL
        songTwoURL = SongTwoURL
        songThreeURL = SongThreeURL
        songFourURL = SongFourURL
        songFiveURL = SongFiveURL
        
        songOneName = SongOneName
        songTwoName = SongTwoName
        songThreeName = SongThreeName
        songFourName = SongFourName
        songFiveName = SongFiveName
        
        day = Day
        
        
    }

}




























