//
//  ViewController.swift
//  tableViewNamePhone
//
//  Created by 有村 琢磨 on 2015/04/01.
//  Copyright (c) 2015年 有村 琢磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    //var myCollectionView : UICollectionView!
    
    
    //ViewControllerMethod
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        myCollectionView.delegate! = self
//        myCollectionView.dataSource! = self
        
        //self.view.addSubview(myCollectionView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UICollectionViewDataSourceMethod
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell:CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as CustomCell
        cell.title.text = "タイトル"
        cell.image.image = UIImage(named:"logo.png")
        cell.backgroundColor = UIColor.blackColor()
        
        return cell
    }
    
    
}

