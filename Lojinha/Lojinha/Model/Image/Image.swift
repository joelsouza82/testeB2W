//
//  Image.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class Image: NSObject
{
    var urlImage: String
    
    override init()
    {
        urlImage = ""
    }
    
    required init(dataJSON: JSON)
    {
        urlImage = dataJSON["urlImagem"].stringValue
    }
}
