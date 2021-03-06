//
//  ViewController.swift
//  SwipeableLabel
//
//  Created by hpark11 on 02/08/2018.
//  Copyright (c) 2018 hpark11. All rights reserved.
//

import UIKit
import SwipeableLabel

class ViewController: UIViewController {
    let words = ["Hello To You Sir", "Nice To Meet You", "Enjoy Your Life", "Farewell"]
    
    @IBOutlet weak var horizontalSwipeLabel1: SwipeableLabel!
    @IBOutlet weak var horizontalSwipeLabel2: SwipeableLabel!
    @IBOutlet weak var verticalSwipeLabel1: SwipeableLabel!
    @IBOutlet weak var verticalSwipeLabel2: SwipeableLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        horizontalSwipeLabel1.delegate = self
        horizontalSwipeLabel1.movementType = .cubical
        
        horizontalSwipeLabel2.delegate = self
        horizontalSwipeLabel2.offset = 80
        
        verticalSwipeLabel1.delegate = self
        verticalSwipeLabel1.direction = .vertical
        verticalSwipeLabel1.movementType = .cubical
        
        verticalSwipeLabel2.delegate = self
        verticalSwipeLabel2.direction = .vertical
        verticalSwipeLabel2.offset = 30
    }
}
extension ViewController: SwipeableLabelDelegate {
    func numberOfItems(in label: SwipeableLabel) -> Int {
        return words.count
    }
    
    func swipableLabel(_ label: SwipeableLabel, textForItem at: Int) -> String {
        return words[at]
    }
}
