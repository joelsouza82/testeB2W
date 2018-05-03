//
//  ListProducts.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class ListProducts: NSObject
{
    var products: [Product]
    var offSet: Int
    var total: Int
    
    override init()
    {
        products = [Product]()
        offSet = 0
        total = 0
    }
    
    required convenience init(dataJSON: JSON)
    {
        self.init()
        offSet = dataJSON["offset"].intValue
        total = dataJSON["total"].intValue
        parseJSON(arrayJson: dataJSON["data"].arrayValue)
    }
}


extension ListProducts: ListControl
{
    func parseJSON(arrayJson: [JSON])
    {
        for json in arrayJson
        {
            let product = Product(dataJSON: json)
            products.append(product)
        }
    }
}
