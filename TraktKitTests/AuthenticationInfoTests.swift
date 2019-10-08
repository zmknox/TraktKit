//
//  AuthenticationInfoTests.swift
//  TraktKitTests
//
//  Created by Maximilian Litteral on 10/7/19.
//  Copyright © 2019 Maximilian Litteral. All rights reserved.
//

import XCTest
@testable import TraktKit

class AuthenticationInfoTests: XCTestCase {

    func testParsingAuthenticationInfo() {
        let authenticationInfo = decode("AuthenticationInfo", to: AuthenticationInfo.self)!
        XCTAssertEqual(authenticationInfo.accessToken, "dbaf9757982a9e738f05d249b7b5b4a266b3a139049317c4909f2f263572c781")
        XCTAssertEqual(authenticationInfo.tokenType, "bearer")
        XCTAssertEqual(authenticationInfo.expiresIn, 7200)
        XCTAssertEqual(authenticationInfo.refreshToken, "76ba4c5c75c96f6087f58a4de10be6c00b29ea1ddc3b2022ee2016d1363e3a7c")
        XCTAssertEqual(authenticationInfo.scope, "public")
        XCTAssertEqual(authenticationInfo.createdAt, 1487889741)
    }
}
