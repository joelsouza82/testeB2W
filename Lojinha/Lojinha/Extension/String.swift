//
//  String.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import UIKit

extension String
{    
    var htmlAttributedString: NSAttributedString?
    {
        do
        {
            return try NSAttributedString(data: Data(utf8), options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        }
        catch
        {
            print("error: ", error)
            return nil
        }
    }
    
    var htmlString: String
    {
        return htmlAttributedString?.string ?? ""
    }
    
    
    func textMiddleLine() -> NSAttributedString
    {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 1.5, range: NSMakeRange(0, attributeString.length))
        
        return attributeString
    }
    

}

extension Double
{
    var newPrice: String
    {
        let price = String(format: "%.2f", self).replacingOccurrences(of: ".", with: ",")
        return "Por: R$ " + price
    }
    
    var oldPrice: NSAttributedString
    {
        let price = String(format: "%.2f", self).replacingOccurrences(of: ".", with: ",")
        return ("De: R$ " + price).textMiddleLine()
    }
}
