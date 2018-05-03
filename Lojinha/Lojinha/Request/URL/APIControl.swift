//
//  APIControl.swift
//  Lojinha
//
//  Created by Joel de ALmeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import SwiftyJSON

// MARK: - Banner Manager
class BannerManager: NSObject
{
    static func getBanners(withURL url: String, completion: @escaping(ListBanner?, Error?) -> Void)
    {
        Request.getFromRequest(url) { (result) in
            if let data = result as? Data
            {
                let banners = ListBanner(dataJSON: JSON(data))
                completion(banners, nil)
            }
            else if let error = result as? Error
            {
                completion(nil, error)
            }
            else
            {
                completion(nil, LojinhaErrors.errors(type: .errorAcess))
            }
        }
    }
}


// MARK: - Category Manager
class CategoryManager: NSObject
{
    static func getCategory(withURL url: String, completion: @escaping(ListCategory?, Error?) -> Void)
    {
        Request.getFromRequest(url) { (result) in
            if let data = result as? Data
            {
                let categories = ListCategory(dataJSON: JSON(data))
                completion(categories, nil)
            }
            else if let error = result as? Error
            {
                completion(nil, error)
            }
            else
            {
                completion(nil, LojinhaErrors.errors(type: .errorAcess))
            }
        }
    }
}


// MARK: - Product Manager
class ProductManager: NSObject
{
    static func getProduct(withURL url: String, completion: @escaping(Product?, Error?) -> Void)
    {
        Request.getFromRequest(url) { (result) in
            if let data = result as? Data
            {
                let product = Product(dataJSON: JSON(data))
                completion(product, nil)
            }
            else if let error = result as? Error
            {
                completion(nil, error)
            }
            else
            {
                completion(nil, LojinhaErrors.errors(type: .errorAcess))
            }
        }
    }
    
    
    static func getProducts(withURL url: String, completion: @escaping(ListProducts?, Error?) -> Void)
    {
        Request.getFromRequest(url) { (result) in
            if let data = result as? Data
            {
                let products = ListProducts(dataJSON: JSON(data))
                completion(products, nil)
            }
            else if let error = result as? Error
            {
                completion(nil, error)
            }
            else
            {
                completion(nil, LojinhaErrors.errors(type: .errorAcess))
            }
        }
    }
    
    static func postProduct(withURL url: String, completion: @escaping(ReserveStatus?, Error?) -> Void)
    {
        Request.postTo(url) { (result) in
            if let data = result as? Data
            {
                let statusReserve = ReserveStatus(dataJSON: JSON(data))
                completion(statusReserve, nil)
            }
            else if let error = result as? Error
            {
                completion(nil, error)
            }
            else
            {
                completion(nil, LojinhaErrors.errors(type: .errorAcess))
            }
        }
    }
}
