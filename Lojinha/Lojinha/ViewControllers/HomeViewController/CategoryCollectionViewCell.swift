//
//  CategoryCollectionViewCell.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell
{
    
    var category: Category?
    {
        didSet
        {
            if let category = category
            {
                setTitle(title: category.descriptions)
                setImage(imgURL: category.image.urlImage)
            }
        }
    }
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!

    
    private func setTitle(title: String)
    {
        categoryTitleLabel.text = title
    }
    
    private func setImage(imgURL: String)
    {
        categoryImage.download(image: imgURL)
    }
}
