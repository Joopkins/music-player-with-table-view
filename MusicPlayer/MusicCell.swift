//
//  MusicCell.swift
//  MusicPlayer
//
//  Created by Richard Bryant on 8/22/16.
//  Copyright © 2016 Joopkins. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(musicCellModel: MusicCellModel) {
        videoTitleLabel.text = musicCellModel.videoTitle
        
        let url = URL(string: musicCellModel.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
    }

}
