//
//  BandsInSelectedGenre.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/7/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit

class BandsInSelectedGenre: UIViewController,  UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var selectedGenreTableView: UITableView!
    var arrayOfAllBands: [DetailBandClass] = []
    
    var genre : [DetailBandClass!] = []
    var title1 = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.title = title1
        selectedGenreTableView.dataSource = self
        selectedGenreTableView.delegate = self
        
        if title1 == "Al"
        {
            
        }
        if title1 == "Al"
        {
            
        }
        if title1 == "Al"
        {
            
        }
        if title1 == "Al"
        {
            
        }
        if title1 == "Al"
        {
            
        }
        if title1 == "Al"
        {
            
        }
        if title1 == "Al"
        {
            
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = selectedGenreTableView.dequeueReusableCellWithIdentifier("Genre Cell", forIndexPath: indexPath)
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
        let selectedRow = selectedGenreTableView.indexPathForSelectedRow?.row
        detailVC.band = arrayOfAllBands[selectedRow!] //detailVC.superhero(reciever) = superheros[selectedRow](quarterback)
    }

}
