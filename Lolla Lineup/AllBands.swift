//
//  AllBands.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/7/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class AllBands: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var allBandsTableView: UITableView!
    var arrayOfAllBands : [DetailBandClass] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        allBandsTableView.dataSource = self
        allBandsTableView.delegate = self
        
        arrayOfAllBands.append(DetailBandClass(Name: "AC Slater", Genre: "Electro House", SongOneURL: "https://www.youtube.com/watch?v=Z-O0Z2icWM0", SongTwoURL: "https://www.youtube.com/watch?v=KtsJdisuFgw", SongThreeURL: "https://www.youtube.com/watch?v=Xhb0wepHdzs", SongFourURL: "https://www.youtube.com/watch?v=xHTbqAfFbVo", SongFiveURL: "https://www.youtube.com/watch?v=PRqRTtyKPMg", SongOneName: "Calm Down", SongTwoName: "Jack Got Jacked (Jack Beats Remix)", SongThreeName: "Up Against The Wall feat. Lismore (Wonk Remix)", SongFourName: "Bass Inside", SongFiveName: "U Got 2", Day: "Day 3"))
        arrayOfAllBands.append(DetailBandClass(Name: "Adventure Club", Genre: "Electro House", SongOneURL: "https://www.youtube.com/watch?v=ZeaIvjoH1FY", SongTwoURL: "https://www.youtube.com/watch?v=09wdQP1FFR0", SongThreeURL: "https://www.youtube.com/watch?v=4ZYm0anhvLg", SongFourURL: "https://www.youtube.com/watch?v=_y8p6uQDH4s", SongFiveURL: "", SongOneName: "Crave You", SongTwoName: "Gold (feat. Yuna)", SongThreeName: " Retro City", SongFourName: "Wonder (Feat. The Kite String Tangle)", SongFiveName: "Rise & Fall (feat. Krewella)", Day: "Day 4"))
        
        arrayOfAllBands.append(DetailBandClass(Name: "Red Hot Chilli Peppers", Genre: "Alternative Rock", SongOneURL: "https://www.youtube.com/watch?v=lwlogyj7nFE", SongTwoURL: "https://www.youtube.com/watch?v=YlUKcNNmywk", SongThreeURL: "https://www.youtube.com/watch?v=o7MhpFF1vv0", SongFourURL: "https://www.youtube.com/watch?v=rn_YodiJO6k", SongFiveURL: "https://www.youtube.com/watch?v=BfOdWSiyWoc", SongOneName: "Under the Bridge", SongTwoName: "Californication", SongThreeName: "Snow (Hey Oh)", SongFourName: "Otherside", SongFiveName: "Can’t Stop", Day: "Day 3"))


    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = allBandsTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
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
        let selectedRow = allBandsTableView.indexPathForSelectedRow?.row
        detailVC.band = arrayOfAllBands[selectedRow!] //detailVC.superhero(reciever) = superheros[selectedRow](quarterback)
    }

}

























