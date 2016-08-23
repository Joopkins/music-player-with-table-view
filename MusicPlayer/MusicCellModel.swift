//
//  File.swift
//  MusicPlayer
//
//  Created by Richard Bryant on 8/22/16.
//  Copyright © 2016 Joopkins. All rights reserved.
//

import Foundation

class MusicCellModel {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoTitle
    }

    var videoTitle: String {
        return _videoTitle
    }
}
