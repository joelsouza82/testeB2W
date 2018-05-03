//
//  ApiURLTest.swift
//  LojinhaTests
//
//  Created by Joel de Almeida Souza on 03/05/18.
//  Copyright © 2018 Joel de Almeida Souza. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import Lojinha

class ApiURLTest: QuickSpec
{
    override func spec()
    {
        describe("API URL")
        {
            context("after initialize by Category Type")
            {
                let newURL = ApiURL.get(type: .category)
                
                it("should not be nil")
                {
                    expect(newURL).toNot(beNil())
                }
                
                it("should be a Sring")
                {
                    expect(newURL).to(beAKindOf(String.self))
                }
                
                it("should have the string URL to request Category")
                {
                    expect(newURL).to(equal("https://alodjinha.herokuapp.com/categoria"))
                }
            }
            
            context("after initialize by ProductByCategory Type")
            {
                let newURL = ApiURL.get(type: .productByCategory)
                
                it("should not be nil")
                {
                    expect(newURL).toNot(beNil())
                }
                
                it("should be a Sring")
                {
                    expect(newURL).to(beAKindOf(String.self))
                }
                
                it("should have the string URL to request ProductByCategory")
                {
                    expect(newURL).to(equal("https://alodjinha.herokuapp.com/produto?offset=0&limit=20&categoriaId="))
                }
            }
            
            context("after initialize by Banner Type")
            {
                let newURL = ApiURL.get(type: .banner)
                
                it("should not be nil")
                {
                    expect(newURL).toNot(beNil())
                }
                
                it("should be a Sring")
                {
                    expect(newURL).to(beAKindOf(String.self))
                }
                
                it("should have the string URL to request Banner")
                {
                    expect(newURL).to(equal("https://alodjinha.herokuapp.com/banner"))
                }
            }
            
            context("after initialize by Product Type")
            {
                let newURL = ApiURL.get(type: .product)
                
                it("should not be nil")
                {
                    expect(newURL).toNot(beNil())
                }
                
                it("should be a Sring")
                {
                    expect(newURL).to(beAKindOf(String.self))
                }
                
                it("should have the string URL to request Product")
                {
                    expect(newURL).to(equal("https://alodjinha.herokuapp.com/produto/"))
                }
            }
            
          
            
            context("after initialize by TopProduct Type")
            {
                let newURL = ApiURL.get(type: .topProducts)
                
                it("should not be nil")
                {
                    expect(newURL).toNot(beNil())
                }
                
                it("should be a Sring")
                {
                    expect(newURL).to(beAKindOf(String.self))
                }
                
                it("should have the string URL to request TopProduct")
                {
                    expect(newURL).to(equal("https://alodjinha.herokuapp.com/produto/maisvendidos"))
                }
            }
            
            context("after initialize by ReserveProduct Type")
            {
                let newURL = ApiURL.get(type: .reserveProduct)
                
                it("should not be nil")
                {
                    expect(newURL).toNot(beNil())
                }
                
                it("should be a Sring")
                {
                    expect(newURL).to(beAKindOf(String.self))
                }
                
                it("should have the string URL to request ReserveProduct")
                {
                    expect(newURL).to(equal("https://alodjinha.herokuapp.com/produto/"))
                }
            }
        }
    }
    
}

