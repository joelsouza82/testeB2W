//
//  ApiURL.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation

struct ApiURL
{
    static func get(type: TypeURL, offset: String? = nil) -> String
    {
        var url: String
        
        switch type
        {
         
        case .category:
            url = API.urlAPI.rawValue + ExtensionURL.category.rawValue
            
        case .product, .reserveProduct:
            url = API.urlAPI.rawValue + ExtensionURL.product.rawValue + PathURL.bar.rawValue
        
        case .banner:
            url = API.urlAPI.rawValue + ExtensionURL.banner.rawValue
            
        case .productByCategory:
            url = API.urlAPI.rawValue +
                ExtensionURL.product.rawValue +
                PathURL.offset.rawValue + (offset ?? "0") +
                PathURL.limit.rawValue +
                CountProductsList.range.rawValue +
                PathURL.categoryID.rawValue
            
        case .topProducts:
            url = API.urlAPI.rawValue + ExtensionURL.product.rawValue + ExtensionURL.topProducts.rawValue
        }
        
        return url
    }
}
