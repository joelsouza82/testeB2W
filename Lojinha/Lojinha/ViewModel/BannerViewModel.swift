//
//  BannerViewModel.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 04/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation

protocol BannerViewModelProtocol: ListProtocol
{
    var list: ListBanner? { get }
    var listBannerDidChange: ((BannerViewModelProtocol) -> Void)? { get set }
}

class BannerViewModel: BannerViewModelProtocol
{
    var list: ListBanner?
    {
        didSet
        {
            self.listBannerDidChange?(self)
        }
    }
    
    var listBannerDidChange: ((BannerViewModelProtocol) -> Void)?
    
    required init()
    {
        list = ListBanner()
    }
    
    func numberOfRows() -> Int
    {
        return list?.banners.count ?? 0
    }
}

extension BannerViewModel
{
    func getElement(completion: @escaping (Error?) -> Void)
    {
        let url = ApiURL.get(type: .banner)
        BannerManager.getBanners(withURL: url) { (banners, error) in
            if let list = banners
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
