//
//  ListBanner.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 02/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class ListBanner: NSObject
{
    var banners: [Banner]
    
    override init()
    {
        banners = [Banner]()
    }
    
    required convenience init(dataJSON: JSON)
    {
        self.init()
        parseJSON(arrayJson: dataJSON["data"].arrayValue)
    }
}


extension ListBanner: ListControl
{
    func parseJSON(arrayJson: [JSON])
    {
        for json in arrayJson
        {
            let banner = Banner(dataJSON: json)
            self.banners.append(banner)
        }
    }
}
