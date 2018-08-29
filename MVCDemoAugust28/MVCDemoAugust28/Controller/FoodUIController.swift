//
//  FoodUIController.swift
//  MVCDemoAugust28
//
//  Created by Administrator on 28/08/18.
//  Copyright © 2018 MyTeam. All rights reserved.
//

import Foundation
import UIKit
//Protocols
protocol CellConfigurable {
    associatedtype DataType
    func configure(data:DataType)
}

protocol CellConfigurator {
    static var reuseId: String { get }
    func configure(cell: UIView)
}


class FoodUIController<CellType:CellConfigurable,DataType>:UITableViewDelegate,UITableViewDataSource,CellConfigurator where CellType.DataType == DataType,CellType:UITableViewCell{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FoodUIController<CellType, DataType>.reuseId) as! CellType
        
        return cell
    }
    
    
    static var reuseId: String { return String(describing: CellType.self) }
    
    let item: [DataType]
    
    init(item: [DataType]) {
        self.item = item
    }
    
    func configure(cell: UIView) {
    }

}
