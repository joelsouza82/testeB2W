//
//  BannerHomeTableViewCell.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class BannerHomeTableViewCell: UITableViewCell
{
    var pagePosition: Int?
    {
        didSet
        {
            if let pagePosition = pagePosition
            {
                setPositionPageControl(pagePosition)
            }
        }
    }
    
    var numberOfPages: Int?
    {
        didSet
        {
            if let numberOfPages = numberOfPages
            {
                setNumberOfPages(numberOfPages)
            }
        }
    }
    
    @IBOutlet weak var bannerHomePageControl: UIPageControl!
    @IBOutlet weak var bannerHomeCollectionView: UICollectionView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

    }

    private func setNumberOfPages(_ pages: Int)
    {
        bannerHomePageControl.numberOfPages = pages
    }
    private func setPositionPageControl(_ position: Int)
    {
        bannerHomePageControl.currentPage = position
    }
}


extension BannerHomeTableViewCell
{
    func setCollectionViewDataSourceDelegate<deleg: UICollectionViewDataSource & UICollectionViewDelegate> (dataSourceDelegate: deleg, forRow row: Int)
    {
        bannerHomeCollectionView.dataSource = dataSourceDelegate
        bannerHomeCollectionView.delegate = dataSourceDelegate
        bannerHomeCollectionView.tag = row
        bannerHomeCollectionView.setContentOffset(bannerHomeCollectionView.contentOffset, animated: false)
        bannerHomeCollectionView.reloadData()
    }
    
    var collectionViewOffSet: CGFloat
    {
        set
        {
            bannerHomeCollectionView.contentOffset.x = newValue
        }
        get
        {
            return bannerHomeCollectionView.contentOffset.x
        }
    }
}
