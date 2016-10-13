//
//  CustomCollectionViewCell.swift
//  PanoImageViewTest
//
//  Created by Huming Wu on 10/12/16.
//  Copyright © 2016 Huming Wu. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var panoImageView: GVRPanoramaView!
    override func awakeFromNib() {
        panoImageView.enableCardboardButton = true
        panoImageView.enableFullscreenButton = true
        panoImageView.enableTouchTracking = true
    }
}
