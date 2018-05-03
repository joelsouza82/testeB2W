//
//  LojinhaProtocols.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol InitializerLojinhaProtocol: class
{
    init()
}

protocol VisibleView
{
    func isView(hide: Bool)
}

protocol ListParamURLProtocol: InitializerLojinhaProtocol, Counts, RequestElementURL
{
    
}

protocol ListControl: class
{
    func parseJSON(arrayJson: [JSON])
}


protocol Counts: class
{
    func numberOfRows() -> Int
}

protocol RequestElement: class
{
    func getElement(completion: @escaping(Error?) -> Void)
}

protocol RequestElementURL: class
{
    func getElement(withURL url: String, completion: @escaping(Error?) -> Void)
}


protocol SingleElement: InitializerLojinhaProtocol, RequestElementURL
{
    
}

protocol ListProtocol: InitializerLojinhaProtocol, Counts, RequestElement
{
    
}


