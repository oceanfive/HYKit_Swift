//
//  TestString.swift
//  HYKit_Swift_Tests
//
//  Created by ocean on 2020/6/10.
//  Copyright © 2020 ocean. All rights reserved.
//

import XCTest
import HYKit_Swift

class TestString: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUpWithError")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("tearDownWithError")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("testExample")
    }

    func testAppendingQueryParameters() throws {
        let urls: [String] = [
            "https://www.baidu.com",
            "https://www.baidu.com?",
        ]
        let paramters: [String: String] = [
            "name": "jack",
            "age": "20",
            "classId": ""
        ]
        let expectedUrls = ["https://www.baidu.com?age=20&name=jack", "https://www.baidu.com?name=jack&age=20"]
        urls.forEach { (url) in
            let newUrl = url.hy_appendingQueryParameters(paramters)
            XCTAssertTrue(expectedUrls.contains(newUrl))
        }
    }
    
    func testAppendingQueryParameters2() throws {
        let urls: [String] = [
            "https://www.baidu.com?id=1"
        ]
        let paramters: [String: String] = [
            "name": "jack"
        ]
        let expectedUrls = ["https://www.baidu.com?id=1&name=jack", "https://www.baidu.com?name=jack&id=1"]
        urls.forEach { (url) in
            let newUrl = url.hy_appendingQueryParameters(paramters)
            XCTAssertTrue(expectedUrls.contains(newUrl))
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
