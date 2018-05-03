//
//  ProductViewModel.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation

protocol ProductViewModelProtocol: ListParamURLProtocol
{
    var list: ListProducts? { get }
    var listProductDidChange: ((ProductViewModelProtocol) -> Void)? { get set }
    
    func add(products: ListProducts)
}

class ProductViewMode: ProductViewModelProtocol
{
    var list: ListProducts?
    {
        didSet
        {
            self.listProductDidChange?(self)
        }
    }
    
    var listProductDidChange: ((ProductViewModelProtocol) -> Void)?
    
    required init()
    {
        list = ListProducts()
    }
    
    func add(products: ListProducts)
    {
        let tempProducts = list
        tempProducts?.products += products.products
        tempProducts?.offSet = products.offSet
        list = tempProducts
    }
    
    func numberOfRows() -> Int
    {
        return list?.products.count ?? 0
    }
}

extension ProductViewMode
{
    func getElement(withURL url: String, completion: @escaping (Error?) -> Void)
    {
        ProductManager.getProducts(withURL: url) { (products, error) in
            if let list = products
            {
                self.add(products: list)
            }
            if let error = error
            {
                completion(error)
            }
        }
    }
    
    func addProductToReserve(productID: Int, completion: @escaping (ReserveStatus?, Error?) -> Void)
    {
        let url = ApiURL.get(type: .reserveProduct) + String(productID)
        ProductManager.postProduct(withURL: url) { (status, error) in
            if let status = status
            {
                completion(status, nil)
            }
            if let error = error
            {
                completion(nil, error)
            }
        }
    }
}
