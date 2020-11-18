//
//  ViewController.swift
//  CollectionviewDemo
//
//  Created by apple on 17/11/20.
//  Copyright © 2020 Krify. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    var arr = ["youtube.jpg","profile.jpg","patientblack.jpg"]
    var arr1=["India","Germany","England"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return arr.count
        }
        else if section == 1{
            return arr.count
        }
        else{
            return arr.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imgView.layer.cornerRadius=cell.imgView.frame.height/2
        if indexPath.section == 0{
            cell.imgView.image=UIImage(named:arr[indexPath.row])
            cell.label.text = arr1[indexPath.row]
        }
        else if indexPath.section == 1{
            cell.imgView.image=UIImage(named:arr[indexPath.row])
            cell.label.text = arr1[indexPath.row]
        }
        else {
            cell.imgView.image=UIImage(named:arr[indexPath.row])
            cell.label.text = arr1[indexPath.row]
        }
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = UIScreen.main.bounds.width-32
        return CGSize(width: cellWidth/3, height: 156)
    }
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView.collectionViewLayout=self
        collectionView.delegate=self
        collectionView.dataSource=self
        
    }


}

