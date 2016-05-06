//
//  SongsBySelectedBand.swift
//  Lolla Lineup
//
//  Created by jcysewski on 4/7/16.
//  Copyright © 2016 jcysewski. All rights reserved.
//

import UIKit
import SafariServices

class SongsBySelectedBand: UIViewController, SFSafariViewControllerDelegate, UINavigationControllerDelegate

{
    @IBOutlet weak var bandNameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var song1: UIButton!
    @IBOutlet weak var song2: UIButton!
    @IBOutlet weak var song3: UIButton!
    @IBOutlet weak var song4: UIButton!
    @IBOutlet weak var song5: UIButton!
    
    var band : DetailBandClass!
    var day : DetailBandClass!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.title = "Lolla Lineup 2016"
        bandNameLabel.text = band.name
        genreLabel.text = "Genre: \(band.genre)"
        song1.setTitle(band.songOneName, forState: .Normal)
        song2.setTitle(band.songTwoName, forState: .Normal)
        song3.setTitle(band.songThreeName, forState: .Normal)
        song4.setTitle(band.songFourName, forState: .Normal)
        song5.setTitle(band.songFiveName, forState: .Normal)
        dayLabel.text = band.day
        
        if band.songOneURL == ""
        {
            song1.enabled = false
        }
        if band.songTwoURL == ""
        {
            song2.enabled = false
        }
        if band.songThreeURL == ""
        {
            song3.enabled = false
        }
        if band.songFourURL == ""
        {
            song4.enabled = false
        }
        if band.songFiveURL == ""
        {
            song5.hidden = true
        }
        
        
    }
    
    
    
    @IBAction func song1ButtonTapped(sender: AnyObject)
    {
        let myURL = NSURL(string: "\(band.songOneURL)")
        let svc = SFSafariViewController(URL: myURL!)
        svc.delegate = self
        presentViewController(svc, animated: true, completion: nil)
        
        
    }
    @IBAction func song2ButtonTapped(sender: AnyObject)
    {
        let myURL = NSURL(string: "\(band.songTwoURL)")
        let svc = SFSafariViewController(URL: myURL!)
        svc.delegate = self
        presentViewController(svc, animated: true, completion: nil)
        
        
    }
    @IBAction func song3ButtonTapped(sender: AnyObject)
    {
        let myURL = NSURL(string: "\(band.songThreeURL)")
        let svc = SFSafariViewController(URL: myURL!)
        svc.delegate = self
        presentViewController(svc, animated: true, completion: nil)
        
        
    }
    @IBAction func song4ButtonTapped(sender: AnyObject)
    {
        let myURL = NSURL(string: "\(band.songFourURL)")
        let svc = SFSafariViewController(URL: myURL!)
        svc.delegate = self
        presentViewController(svc, animated: true, completion: nil)
        
        
    }
    @IBAction func song5ButtonTapped(sender: AnyObject)
    {
        
        let myURL = NSURL(string: "\(band.songFiveURL)")
        let svc = SFSafariViewController(URL: myURL!)
        svc.delegate = self
        presentViewController(svc, animated: true, completion: nil)
        
        
    }
    
    
    
    
}
