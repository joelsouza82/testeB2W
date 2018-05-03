//
//  ReserveStatus.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 02/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

class ReserveStatus: NSObject
{
    var result:  String
    var message: String
    
    override init()
    {
        result  = ""
        message = ""
    }
    
    required init(dataJSON: JSON)
    {
        result  = dataJSON["result"].stringValue
        message = dataJSON["message"].stringValue
    }
}
