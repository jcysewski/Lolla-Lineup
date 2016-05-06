//
//  BandsInSelectedDay.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/7/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class BandsInSelectedDay: UIViewController,  UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var bandsInSelectedDayTableView: UITableView!
    
    var arrayOfAllBands: [DetailBandClass] = []
    
    var day : [DetailBandClass!] = []
    var title1 = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.title = title1
        bandsInSelectedDayTableView.dataSource = self
        bandsInSelectedDayTableView.delegate = self
        
        
        if title1 == "Day 1"
        {
            arrayOfAllBands.append(DetailBandClass(Name: "Alle Farben", Genre: "Pop", SongOneURL: "https://www.youtube.com/watch?v=HC1MmjPu3Xo", SongTwoURL: "https://www.youtube.com/watch?v=okBwFEz0TRI", SongThreeURL: "https://www.youtube.com/watch?v=zQAr3__aSn0", SongFourURL: "https://www.youtube.com/watch?v=V1Al3wMiEek", SongFiveURL: "https://www.youtube.com/watch?v=jGQWafRX7IE", SongOneName: "She Moves", SongTwoName: "Sometimes", SongThreeName: "She Moves - Acoustic Guitar Version", SongFourName: "Get High", SongFiveName: "Danse (Drauf & Dran Remix)", Day: "Day 1"))
            arrayOfAllBands.append(DetailBandClass(Name: "Alunageorge", Genre: "Electronic", SongOneURL: "https://www.youtube.com/watch?v=VfCSx5641U4", SongTwoURL: "https://www.youtube.com/watch?v=aBn7bjy9c4U", SongThreeURL: "https://www.youtube.com/watch?v=7d_HD89ZlJE", SongFourURL: "https://www.youtube.com/watch?v=wecvxQElEU0", SongFiveURL: "https://www.youtube.com/watch?v=gfVfXCSYWd0", SongOneName: "Your Drums, Your Love", SongTwoName: "You Know You Like It", SongThreeName: "Attracting Flies", SongFourName: "Supernatural", SongFiveName: "Outlines", Day: "Day 1"))
        }
        if title1 == "Day 2"
        {
            arrayOfAllBands.append(DetailBandClass(Name: "Alessia Cara", Genre: "Pop", SongOneURL: "https://www.youtube.com/watch?v=UKp2CrfmVfw", SongTwoURL: "https://www.youtube.com/watch?v=De30ET0dQpQ", SongThreeURL: "https://www.youtube.com/watch?v=Em7vc8NWUNY", SongFourURL: "https://www.youtube.com/watch?v=qbIaPaB9LDk", SongFiveURL: "https://www.youtube.com/watch?v=4b2M5K7sbc0", SongOneName: "Here", SongTwoName: "Wild Things", SongThreeName: "Scars to Your Beautiful", SongFourName: "Seventeen", SongFiveName: "River of Tears", Day: "Day 2"))
        }
        if title1 == "Day 3"
        {
            arrayOfAllBands.append(DetailBandClass(Name: "AC Slater", Genre: "Electro House", SongOneURL: "https://www.youtube.com/watch?v=Z-O0Z2icWM0", SongTwoURL: "https://www.youtube.com/watch?v=KtsJdisuFgw", SongThreeURL: "https://www.youtube.com/watch?v=Xhb0wepHdzs", SongFourURL: "https://www.youtube.com/watch?v=xHTbqAfFbVo", SongFiveURL: "https://www.youtube.com/watch?v=PRqRTtyKPMg", SongOneName: "Calm Down", SongTwoName: "Jack Got Jacked (Jack Beats Remix)", SongThreeName: "Up Against The Wall feat. Lismore (Wonk Remix)", SongFourName: "Bass Inside", SongFiveName: "U Got 2", Day: "Day 3"))
        }
        if title1 == "Day 4"
        {
            arrayOfAllBands.append(DetailBandClass(Name: "Adventure Club", Genre: "Electro House", SongOneURL: "https://www.youtube.com/watch?v=ZeaIvjoH1FY", SongTwoURL: "https://www.youtube.com/watch?v=09wdQP1FFR0", SongThreeURL: "https://www.youtube.com/watch?v=4ZYm0anhvLg", SongFourURL: "https://www.youtube.com/watch?v=WinkoZiOYQc", SongFiveURL: "https://www.youtube.com/watch?v=_y8p6uQDH4s", SongOneName: "Crave You", SongTwoName: "Gold (feat. Yuna)", SongThreeName: " Retro City", SongFourName: "Wonder (Feat. The Kite String Tangle)", SongFiveName: "Rise & Fall (feat. Krewella)", Day: "Day 4"))
        }
//        if arrayOfDays[selectedRow!] = "Day 1"
//        {
//            
//        }
        //tableView(bandsInSelectedDayTableView, titleForHeaderInSection: arrayOfBandsByDay.name)

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = bandsInSelectedDayTableView.dequeueReusableCellWithIdentifier("myCell3", forIndexPath: indexPath)
        myTableViewCell.textLabel?.text = arrayOfAllBands[indexPath.row].name
        return myTableViewCell
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfAllBands.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let detailVC = segue.destinationViewController as! SongsBySelectedBand
        let selectedRow = bandsInSelectedDayTableView.indexPathForSelectedRow?.row
        detailVC.band = arrayOfAllBands[selectedRow!] //detailVC.superhero(reciever) = superheros[selectedRow](quarterback)
    }



}
