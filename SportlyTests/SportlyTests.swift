//
//  SportlyTests.swift
//  SportlyTests
//
//  Created by Abdelrahman Elnagdy on 29/04/2021.
//

import XCTest
@testable import Sportly

class SportlyTests: XCTestCase {
    var sportViewController: ViewController?

    override func setUpWithError() throws {
       sportViewController = ViewController()
    }

    override func tearDownWithError() throws {
        sportViewController = nil
    }
    
    func testgetAllSportsSuccess() {
        XCTAssertNotNil(sportViewController?.sports)
    }
    
    func testgetAllSportsFailure() {
        
    }
    
    func testRegisterCell() {
        XCTAssertNotNil(sportViewController?.registerCells())
        
    }
    
    func testCellForItem() {
        
    }
    
    func testDidSelect() {
        
    }



}
