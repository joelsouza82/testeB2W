//
//  Category.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 02/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class Category: NSObject
{
    var idCategoria: Int
    var descriptions: String
    var image: Image
    
    override init()
    {
        idCategoria = 0
        descriptions = ""
        image = Image()
    }
    
    required init(dataJSON: JSON)
    {
        idCategoria = dataJSON["id"].intValue
        descriptions = dataJSON["descricao"].stringValue
        image = Image(dataJSON: dataJSON)
    }
}
