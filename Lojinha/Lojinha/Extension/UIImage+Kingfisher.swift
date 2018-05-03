//
//  UIImage+Kingfisher.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import Foundation
import Kingfisher

extension UIImageView
{
    func download(image url: String)
    {
        guard let imageURL = URL(string: url) else {
            return
        }
        
        self.kf.indicator?.startAnimatingView()
        self.kf.indicatorType = .activity
        self.kf.setImage(with: ImageResource(downloadURL: imageURL), placeholder: UIImage(named: "image_placeholder"))
        self.kf.indicator?.stopAnimatingView()
    }
}
