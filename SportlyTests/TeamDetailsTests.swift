//
//  TeamDetailsTests.swift
//  SportlyTests
//
//  Created by SOHA on 4/29/21.
//

import XCTest
@testable import Sportly
class TeamDetailsTests: XCTestCase {
    
    var idLeague:String!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        idLeague = "133604"
    }
    
    func testGetTeamDetails(){
        
        let expecttionObj = expectation(description: "Wait for response")
        APIClient.getTeamDetails(id: idLeague){[weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result {
            case .success(let team):
                expecttionObj.fulfill()
                XCTAssertEqual(team.teams.count, 1)
                XCTAssertTrue(true)
            case .failure(_):
                XCTFail()
            }
        }
        waitForExpectations(timeout: 5)
    }
    

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        idLeague = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
