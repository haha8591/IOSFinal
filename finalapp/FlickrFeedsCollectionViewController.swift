//
//  FlickrFeedsCollectionViewController.swift
//  PhotoDemo
//
//  Created by SHIH-YING PAN on 2019/1/11.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FlickrFeedsCollectionViewController: UICollectionViewController {
    
    var photos = [Item]()
    
    
    func fetchData() {
        
        if let url = URL(string: "https://www.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags=view") {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data, let feedData = try? JSONDecoder().decode(FeedData.self, from: data) {
                    self.photos = feedData.items
                    DispatchQueue.main.async {
                        self.collectionView.reloadData()
                    }
                }
                
            }
            
            task.resume()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        let width = (view.bounds.width - 10) / 2
        layout?.itemSize = CGSize(width: width, height: width + 80)
        fetchData()
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCollectionViewCell
        
        // Configure the cell
        let photo = photos[indexPath.item]
        cell.titleLabel.text = photo.title
        cell.imageURL = photo.media.m
        cell.photoImageView.image = nil
        
        NetworkUtility.downloadImage(url: cell.imageURL) { (image) in
            if cell.imageURL == photo.media.m, let image = image  {
                DispatchQueue.main.async {
                    cell.photoImageView.image = image
                    
                }
            }
        }
        
        return cell
    }
    
    
}
