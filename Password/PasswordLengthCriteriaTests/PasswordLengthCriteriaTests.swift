//
//  PasswordLengthCriteriaTests.swift
//  PasswordLengthCriteriaTests
//
//  Created by Supapon Pucknavin on 11/11/2565 BE.
//

import XCTest

@testable import Password
final class PasswordLengthCriteriaTests: XCTestCase {

    func testShort() throws {
            XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234567"))
        }

        func testLong() throws {
            XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("123456789012345678901234567890123"))
        }
        
        func testValidShort() throws {
            XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678"))
        }

        func testValidLong() throws {
            XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678901234567890123456789012"))
        }

}
