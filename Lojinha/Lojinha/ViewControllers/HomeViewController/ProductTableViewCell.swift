//
//  ProductTableViewCell.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell
{
    // MARK: - Var
    var product: Product?
    {
        didSet
        {
            if let products = product
            {
                let text = products.name + "<br/><br/>" + products.descriptions
                setDescription(text: text)
                setNewPriceLabel(price: products.priceNew)
                setOldPriceLabel(price: products.priceOld)
                setImage(imgURL: products.image.urlImage)
            }
        }
    }
    
    // MARK: - IBOutlets
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productOldPriceLabel: UILabel!
    @IBOutlet weak var productNewPriceLabel: UILabel!
    

    override func awakeFromNib()
    {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        
    }

    private func setDescription(text: String)
    {
        productDescriptionLabel.attributedText = text.htmlAttributedString
    }
    
    private func setNewPriceLabel(price: Double)
    {
        productNewPriceLabel.text = price.newPrice
    }
    
    private func setOldPriceLabel(price: Double)
    {
        productOldPriceLabel.attributedText = price.oldPrice
    }
    
    private func setImage(imgURL: String)
    {
        productImage.download(image: imgURL)
    }
}
