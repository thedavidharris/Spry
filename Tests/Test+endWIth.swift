//
//  Test+endWIth.swift
//  Spry
//
//  Created by Shahpour Benkau on 23/02/2017.
//
//

import XCTest
import Spry

final class Test_endWIth: XCTestCase {
    
    func testEndWithPositives() {
        XCTAssert(expect([1, 2, 3]).to(endWith(3)).expectationResult)
        XCTAssert(expect([1, 2, 3]).toNot(endWith(2)).expectationResult)
        XCTAssert(expect([]).toNot(endWith(1)).expectationResult)
        XCTAssert(expect(["a", "b", "a"]).to(endWith("a")).expectationResult)
        
        XCTAssert(expect("foobar").to(endWith("bar")).expectationResult)
        XCTAssert(expect("foobar").toNot(endWith("oo")).expectationResult)
        XCTAssert(expect("foobarfoo").to(endWith("foo")).expectationResult)
        
        XCTAssert(expect(NSString(string: "foobar").description).to(endWith("bar")).expectationResult)
        XCTAssert(expect(NSString(string: "foobar").description).toNot(endWith("oo")).expectationResult)
    }
    
}
