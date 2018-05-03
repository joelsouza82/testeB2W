//
//  Banner.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 02/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class Banner: NSObject
{
    var idBanner: Int
    var images: Image
    var linkURL: String
    
    override init()
    {
        idBanner = 0
        images = Image()
        linkURL = ""
       
    }
    required init(dataJSON: JSON)
    {
        idBanner = dataJSON["id"].intValue
        images = Image(dataJSON: dataJSON)
        linkURL = dataJSON["linkUrl"].stringValue
        
    }
}
