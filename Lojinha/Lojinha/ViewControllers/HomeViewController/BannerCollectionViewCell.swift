//
//  BannerCollectionViewCell.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell
{
    
    var banner: Banner?
    {
        didSet
        {
            if let banner = banner
            {
                setImage(imgURL: banner.images.urlImage)
            }
        }
    }
    

    @IBOutlet weak var bannerImage: UIImageView!
    
    
    private func setImage(imgURL: String)
    {
        bannerImage.download(image: imgURL)
    }
}
