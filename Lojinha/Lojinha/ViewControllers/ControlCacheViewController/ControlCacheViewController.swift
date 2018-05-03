//
//  ControlCacheViewController.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit
import Kingfisher

class ControlCacheViewController: UIViewController
{
    // MARK: Life Cycle
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(animated)
        
        Spinner.shared.stopSppinerAnimating()
    }
    
    
    // MARK: Control cache
    func controlCache()
    {
        print("-> Cache Before: \(URLCache.shared.currentMemoryUsage)")
        URLCache.shared.removeAllCachedResponses()
        let cache = KingfisherManager.shared.cache
        cache.clearDiskCache()
        cache.clearMemoryCache()
        cache.cleanExpiredDiskCache()
        print("-> Cache Alfer: \(URLCache.shared.currentMemoryUsage)")
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        controlCache()
    }
    
    deinit
    {
        controlCache()
    }
    
    
    
}
