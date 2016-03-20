//
//  SymdayTests.swift
//  SymdayTests
//
//  Created by Tatsuya Tobioka on 3/20/16.
//  Copyright © 2016 Tatsuya Tobioka. All rights reserved.
//

import XCTest
@testable import Symday

#if os(Linux)
    extension SymdayTests: XCTestCaseProvider {
        var allTests: [(String, () throws -> Void)] {
            return [
                ("testDefaultTemplate", testDefaultTemplate),
                ("testCustomTemplate", testCustomTemplate),
            ]
        }
    }
#endif

class SymdayTests: XCTestCase {
    
    let date = NSDate(timeIntervalSince1970: 1_279_410_659)
    let timeZone = NSTimeZone(name: "UTC")!

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDefaultTemplate() {
        XCTAssertEqual(Symday(timeZone: timeZone).format(date), "Jul 17, 2010")
        XCTAssertEqual(Symday(timeZone: timeZone, locale: NSLocale(localeIdentifier: "ja_JP")).format(date), "2010年7月17日")
    }
    
    func testCustomTemplate() {
        let template = "MdEEE"
        XCTAssertEqual(Symday(timeZone: timeZone, template: template).format(date), "Sat, 7/17")
        XCTAssertEqual(Symday(timeZone: timeZone, template: template, locale: NSLocale(localeIdentifier: "ja_JP")).format(date), "7/17(土)")
    }
}
