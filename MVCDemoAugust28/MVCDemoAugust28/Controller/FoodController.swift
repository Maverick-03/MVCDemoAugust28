//
//  ViewController.swift
//  MVCDemoAugust28
//
//  Created by Administrator on 28/08/18.
//  Copyright © 2018 MyTeam. All rights reserved.
//

import UIKit

class FoodController: UIViewController {
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = FoodUIController<FoodCell,Food>.init(item: Food(foodName: "Banana", foodImage: "", foodID: "1"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

