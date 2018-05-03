//
//  Alerts.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

let popViewControllerNotificationCenter = Notification.Name(rawValue: NotificationName.popView.rawValue)

class Alerts: NSObject
{
    static func showAlert(title: String? = nil, message: String?, isSuccess: Bool? = nil) -> UIAlertController
    {
        let alerts = UIAlertController(title: title ?? "Desculpe..." , message: (message), preferredStyle: UIAlertControllerStyle.alert)
        if isSuccess ?? false
        {
            alerts.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (alert) in
                NotificationCenter.default.post(name: popViewControllerNotificationCenter, object: nil)
            }))
        }
        else
        {
            alerts.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        }
        
        return alerts
    }
}
