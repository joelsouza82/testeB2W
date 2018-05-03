//
//  TopSellingProductsViewModel.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation

protocol TopSellingProductsViewModelProtocol: ListProtocol
{
    var list: ListProducts? { get }
    var listTopSellingProductsDidChange: ((TopSellingProductsViewModelProtocol) -> Void)? { get set }
}

class TopSellingProductsViewModel: TopSellingProductsViewModelProtocol
{
    var list: ListProducts?
    {
        didSet
        {
            self.listTopSellingProductsDidChange?(self)
        }
    }
    
    var listTopSellingProductsDidChange: ((TopSellingProductsViewModelProtocol) -> Void)?
    
    required init()
    {
        list = ListProducts()
    }
    
    func numberOfRows() -> Int
    {
        return list?.products.count ?? 0
    }
}

extension TopSellingProductsViewModel
{
    func getElement(completion: @escaping (Error?) -> Void)
    {
        let url = ApiURL.get(type: .topProducts)
        ProductManager.getProducts(withURL: url) { (products, error) in
            if let list = products
            {
                self.list = list
            }
            if let error = error
            {
                completion(error)
            }
        }
    }
}
