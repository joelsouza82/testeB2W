//
//  CategoryHomeTableViewCell.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class CategoryHomeTableViewCell: UITableViewCell
{
    // MARK: - IBOutlets
    @IBOutlet weak var categoryHomeCollectionView: UICollectionView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }

}

extension CategoryHomeTableViewCell
{
    func setCollectionViewDataSourceDelegate<deleg: UICollectionViewDataSource & UICollectionViewDelegate> (dataSourceDelegate: deleg, forRow row: Int)
    {
        categoryHomeCollectionView.dataSource = dataSourceDelegate
        categoryHomeCollectionView.delegate = dataSourceDelegate
        categoryHomeCollectionView.tag = row
        categoryHomeCollectionView.setContentOffset(categoryHomeCollectionView.contentOffset, animated: false)
        categoryHomeCollectionView.reloadData()
    }
    
    var collectionViewOffSet: CGFloat
    {
        set
        {
            categoryHomeCollectionView.contentOffset.x = newValue
        }
        get
        {
            return categoryHomeCollectionView.contentOffset.x
        }
    }
}
