//
//  Genres.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/7/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class Genres: UIViewController, UITableViewDataSource, UITableViewDelegate

{
    @IBOutlet weak var genresTableView: UITableView!
    
    var listOfGenresArray = ["Alternative", "Electronic", "Hip Hop", "House", "Pop", "Rap", "Rock"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //navigationItem.title = "Lolla Lineup 2016"
        
        let image = UIImage(named: "Revised Final Lolla")
        navigationItem.titleView = UIImageView(image: image)
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit

        genresTableView.dataSource = self
        genresTableView.delegate = self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = genresTableView.dequeueReusableCellWithIdentifier("Genre Cell", forIndexPath: indexPath)
        myTableViewCell.textLabel?.text = listOfGenresArray[indexPath.row]
        return myTableViewCell
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listOfGenresArray.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let byDayVC = segue.destinationViewController as! BandsInSelectedGenre
        let selectedRow = genresTableView.indexPathForSelectedRow?.row
        byDayVC.title1 = listOfGenresArray[selectedRow!]
    }


}
