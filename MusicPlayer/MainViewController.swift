//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Richard Bryant on 8/22/16.
//  Copyright © 2016 Joopkins. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    var musicCellData = [MusicCellModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let m1 = MusicCellModel(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        let m2 = MusicCellModel(imageURL: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        let m3 = MusicCellModel(imageURL: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle Lesson")
        let m4 = MusicCellModel(imageURL: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Commercial")
        let m5 = MusicCellModel(imageURL: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        musicCellData.append(m1)
        musicCellData.append(m2)
        musicCellData.append(m3)
        musicCellData.append(m4)
        musicCellData.append(m5)
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as? MusicCell {
            let musicCellDataItem = musicCellData[indexPath.row]
            cell.updateUI(musicCellModel: musicCellDataItem)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicCellData.count
    }


}

