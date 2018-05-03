//
//  Spinner.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class Spinner: NSObject
{
    struct ActivitySize
    {
        static let height: CGFloat = 55.0
        static let width: CFloat  = 55.0
    }
    
    static let shared = Spinner()
    
    var viewActivity : UIView?
    
    var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
    
    //criar sppiner
    private func createSppiner(view: UIView) -> UIView
    {
        activityIndicator.center = view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = UIColor().purpleColor()
        activityIndicator.startAnimating()
        view.addSubview(activityIndicator)
        
        return activityIndicator
    }
    //mostrar sppiner
    func showSppiner(view:UIView)
    {
        let mainView = UIApplication.shared.keyWindow!.rootViewController!.view!
        
        viewActivity = UIView(frame: CGRect(x: mainView.frame.origin.x, y: mainView.frame.origin.y, width: mainView.frame.width, height: mainView.frame.height))
        viewActivity!.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        viewActivity!.center = view.center
        view.addSubview(viewActivity!)
        
        self.activityIndicator = createSppiner(view: view) as! UIActivityIndicatorView
    }
    //parar sppiner
    func stopSppinerAnimating()
    {
        self.viewActivity?.isHidden = true
        self.activityIndicator.stopAnimating()
        viewActivity?.removeFromSuperview()
    }
}
