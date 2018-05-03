//
//  UIViewController.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

extension UIViewController
{
    func setTitle(title: String)
    {
        self.title = title
    }
    
    func setTitleWithCustomFont(title: String)
    {
        let attributes = [NSAttributedStringKey.font: UIFont(name: "Pacifico-Regular", size: 25)!]
        UINavigationBar.appearance().titleTextAttributes = attributes
        self.navigationItem.title = title
    }
    
    func setImageInTitle()
    {
        let image = UIImage(named: "ic_logo_navbar")
        let imageView = UIImageView(image: image)
        self.navigationItem.titleView = imageView
    }    
}
