//
//  ViewController.swift
//  PanoImageViewTest
//
//  Created by Huming Wu on 10/12/16.
//  Copyright © 2016 Huming Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    let images = ["andes","andes","andes","andes","andes","andes","andes","andes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        cell.panoImageView.load(nil)
        cell.panoImageView.load(UIImage(named:images[indexPath.row]), of: GVRPanoramaImageType.stereoOverUnder)
        return cell
    }


}

