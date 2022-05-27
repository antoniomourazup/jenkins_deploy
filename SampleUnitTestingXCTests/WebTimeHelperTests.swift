//
//  WebTimeHelperTests.swift
//  SampleUnitTesting
//
//  Created by Basem Emara on 1/21/16.
//  Copyright © 2016 Zamzam. All rights reserved.
//

import Foundation
import XCTest

class WebTimeHelperTests: XCTestCase {
    
    var webHelper: WebHelper!
    
    override func setUp() {
        super.setUp()
        
        webHelper = WebHelper()
    }
    
    func testAddOrUpdateQueryStringParameter() {
        let value = "https://example.com?abc=123&lmn=tuv&xyz=987"
        
        let newValue = webHelper.addOrUpdateQueryStringParameter(value, key: "aBc", value: "555")
        let expectedValue = "https://example.com?aBc=555&lmn=tuv&xyz=987"
        
        XCTAssertEqual(newValue, expectedValue,
            "String should be \(expectedValue)")
    }
    
    func testRemoveQueryStringParameter() {
        let value = "https://example.com?abc=123&lmn=tuv&xyz=987"
        
        let newValue = webHelper.removeQueryStringParameter(value, key: "xyz")
        let expectedValue = "https://example.com?abc=123&lmn=tuv"
        
        XCTAssertEqual(newValue, expectedValue,
            "String should be \(expectedValue)")
    }
    
    func testAddOrUpdateQueryStringParameterForAdd() {
        let value = "https://example.com?abc=123&lmn=tuv&xyz=987"
        
        let newValue = webHelper.addOrUpdateQueryStringParameter(value, key: "def", value: "456")
        let expectedValue = "https://example.com?abc=123&lmn=tuv&xyz=987&def=456"
        
        XCTAssertEqual(newValue, expectedValue,
            "String should be \(expectedValue)")
    }
}