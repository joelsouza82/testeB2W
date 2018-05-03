//
//  EnumURL.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import UIKit

enum API: String
{
    case urlAPI = "https://alodjinha.herokuapp.com/"
}

enum ExtensionURL: String
{
    case category = "categoria"
    case banner = "banner"
    case product = "produto"
    case topProducts = "/maisvendidos"
}

enum PathURL: String
{
    case bar = "/"
    case offset = "?offset="
    case limit = "&limit="
    case categoryID = "&categoriaId="
}

enum TypeURL
{
    case category
    case product
    case banner
    case productByCategory
    case topProducts
    case reserveProduct
}


enum CountProductsList: String
{
    case range = "20"
}

enum CellIdentifier: String
{
    case listHome = "listHomeCell"
    case bannerHome = "bannerHomeCell"
    case listCatetoryHome = "listCategoryHome"
    case bannerCell = "bannerCell"
    case categoryCell = "categoryCell"
    case categoryListCell = "categoryListCell"
    
}

enum Corner: CGFloat
{
    case button = 5
}

enum Status: String
{
    case success = "success"
    case error = "error"
}

enum NotificationName: String
{
    case popView = "popViewControllerNotificationCenter"
}

enum RestorationID: String
{
    case bannerHome = "bannerHomeCollectionView"
}

enum Segue: String
{
    case detailCategory = "detailCategorySegue"
    case detailProduct = "productDetailSegue"
}

enum ErrorType
{
    case errorRequest
    case errorAcess
}

