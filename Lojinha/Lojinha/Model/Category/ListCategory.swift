//
//  ListCategory.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 02/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class ListCategory: NSObject
{
    var categories: [Category]
    
    override init()
    {
        categories = [Category]()
    }
    
    required convenience init(dataJSON: JSON)
    {
        self.init()
        parseJSON(arrayJson: dataJSON["data"].arrayValue)
    }
}


extension ListCategory: ListControl
{
    func parseJSON(arrayJson: [JSON])
    {
        for json in arrayJson
        {
            let category = Category(dataJSON: json)
            categories.append(category)
        }
    }
}
