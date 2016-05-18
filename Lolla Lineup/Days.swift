//
//  Days.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/7/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class Days: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var fourDaysTableView: UITableView!
    
    var arrayOfDays = ["Day 1", "Day 2", "Day 3", "Day 4"]
    
    //var arrayOfAllDays : [ClassDay] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        //navigationItem.title = "Lolla Lineup 2016"
        
        let image = UIImage(named: "Revised Final Lolla")
        navigationItem.titleView = UIImageView(image: image)
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit

        
        fourDaysTableView.dataSource = self
        fourDaysTableView.delegate = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = fourDaysTableView.dequeueReusableCellWithIdentifier("Day Cell", forIndexPath: indexPath)
        myTableViewCell.textLabel?.text = arrayOfDays[indexPath.row]
        return myTableViewCell
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfDays.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
        {
            let byDayVC = segue.destinationViewController as! BandsInSelectedDay
            let selectedRow = fourDaysTableView.indexPathForSelectedRow?.row
            byDayVC.title1 = arrayOfDays[selectedRow!]
        }
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
//    {
////        let byDayVC = segue.destinationViewController as! BandsInSelectedDay
////        let selectedRow = fourDaysTableView.indexPathForSelectedRow?.row
////        byDayVC.day = arrayOfDays[selectedRow!]
//        //detailVC.superhero(reciever) = superheros[selectedRow](quarterback)
//        
//        if fourDaysTableView.indexPathForSelectedRow == 0
//        {
//            
//        }
//        if fourDaysTableView.indexPathForSelectedRow == 1
//        {
//            
//        }
    //}


}
