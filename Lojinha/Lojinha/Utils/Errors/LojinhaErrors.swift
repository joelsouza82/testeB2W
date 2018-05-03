//
//  LojinhaErrors.swift
//  Lojinha
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.~
//

import Foundation

struct LojinhaErrors
{
    static func errors(type: ErrorType) -> NSError
    {
        switch type
        {
            case .errorRequest:
                return NSError(domain: "Erro na requisição!", code: 430, userInfo: nil)
            case .errorAcess:
                return NSError(domain: "Não foi possível acessar no momento!", code: 404, userInfo: nil)
        
        }
    }
}
