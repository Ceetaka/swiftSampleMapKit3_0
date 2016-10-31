//
//  ViewController.swift
//  sampleMapKit
//
//  Created by Eriko Ichinohe on 2016/02/11.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //中心となる場所の座標オブジェクトを作成
        //アヤラ
//        let center = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        //        SM
        let center = CLLocationCoordinate2DMake(10.311715, 123.918332);
        //縮尺を設定
        let span = MKCoordinateSpanMake(0.1, 0.1)
        
        
        //範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(center, span)
        
        //MapViewに設定
        myMapView.setRegion(region, animated: true)
        
        
        // ピンを生成.==================================
        let myPin: MKPointAnnotation = MKPointAnnotation()
        
        // 座標を設定.
        myPin.coordinate = center
        
        // タイトルを設定.
        myPin.title = "SM"
        
        // サブタイトルを設定.
        myPin.subtitle = "シーサイドじゃないよ"
        
        // MapViewにピンを追加.
        myMapView.addAnnotation(myPin)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

