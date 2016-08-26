//
//  VideoViewController.swift
//  MusicPlayer
//
//  Created by Richard Bryant on 8/22/16.
//  Copyright © 2016 Joopkins. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var _musicModel: MusicCellModel!
    
    var musicModel: MusicCellModel {
        get {
            return _musicModel
        } set {
            _musicModel = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = musicModel.videoTitle
        webView.loadHTMLString(musicModel.videoTitle, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
