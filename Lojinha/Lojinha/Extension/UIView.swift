//
//  UIView.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

extension UIView
{
    func circleView()
    {
        let halfWidth = self.layer.frame.size.width/2
        cornerRadius(radius: halfWidth)
    }
    
    func cornerRadius(radius: CGFloat)
    {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
