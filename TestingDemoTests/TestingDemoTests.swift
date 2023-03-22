//
//  TestingDemoTests.swift
//  TestingDemoTests
//
//  Created by Ananth Nair on 21/03/23.
//

import XCTest
@testable import TestingDemo

final class TestingDemoTests: XCTestCase {
    
    let bookingHelper = BookingHelper()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
    
    // Testing !st and 2nd class Ticket
    
    func testBookingFunc() throws{
        //Given
        let firstClassTickets = 10
        let secondClassTickets = 1
        
        //When
        let price = bookingHelper.bookMovies(forFirstClass: firstClassTickets, SecondClass: secondClassTickets)
        
        //Then
        let expectedPrice = 2100
        XCTAssertEqual(expectedPrice, price)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
