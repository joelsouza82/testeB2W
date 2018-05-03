//
//  Product.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class Product: NSObject
{
    var idProduct: Int
    var name: String
    var descriptions: String
    var image: Image
    var category: Category
    var priceOld: Double
    var priceNew: Double
   
    //Contrutor
    override init()
    {
        idProduct = 0
        name = ""
        descriptions = ""
        image = Image()
        category = Category()
        priceOld = 0
        priceNew = 0
       
    }
    //Parse
    required init(dataJSON: JSON)
    {
        idProduct = dataJSON["id"].intValue
        name = dataJSON["nome"].stringValue
        descriptions = dataJSON["descricao"].stringValue
        image = Image(dataJSON: dataJSON)
        category = Category(dataJSON: dataJSON["categoria"])
        priceOld = dataJSON["precoDe"].doubleValue
        priceNew = dataJSON["precoPor"].doubleValue
       
    }
}
