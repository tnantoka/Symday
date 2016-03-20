//
//  SymdayTests.swift
//  SymdayTests
//
//  Created by Tatsuya Tobioka on 3/20/16.
//  Copyright © 2016 Tatsuya Tobioka. All rights reserved.
//

import XCTest
@testable import Symday

class SymdayTests: XCTestCase {
    
    let date = NSDate(timeIntervalSince1970: 1_279_410_659)
    let timeZone = NSTimeZone(name: "UTC")!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

    func testFormatWithDefaultTemplate() {
        XCTAssertEqual(Symday(timeZone: timeZone).format(date), "Jul 17, 2010")
        XCTAssertEqual(Symday(timeZone: timeZone, locale: NSLocale(localeIdentifier: "ja_JP")).format(date), "2010年7月17日")
    }
    
    func testFormatWithCustomTemplate() {
        let template = "MdEEE"
        XCTAssertEqual(Symday(timeZone: timeZone, template: template).format(date), "Sat, 7/17")
        XCTAssertEqual(Symday(timeZone: timeZone, template: template, locale: NSLocale(localeIdentifier: "ja_JP")).format(date), "7/17(土)")
    }
}
