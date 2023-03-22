//
//  PriceCalculatorTest.swift
//  TestingDemoTests
//
//  Created by Ananth Nair on 22/03/23.
//

import XCTest
@testable import TestingDemo
final class PriceCalculatorTest: XCTestCase {
    
    
    func testcalculatePrice(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
    }
    
    func testCalculateFunc(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
        
        let price = calculator.calculateTicketPrice(tickets : 10)
        XCTAssertNotNil(price)
    }
    func testCalculateFunc_returnPrice(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
        
        let price = calculator.calculateTicketPrice(tickets : 10)
        XCTAssertNotNil(price)
        let expectedPrice = 1000
        XCTAssertTrue(expectedPrice == price)
    }
    func testValidPrice_100(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
        
        let price = calculator.calculateTicketPrice(tickets : 10)
        XCTAssertNotNil(price)
        let expectedPrice = 1000
        XCTAssertTrue(expectedPrice == price)
    }
    func testValidPrice_100_passingFiveTickets(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
        
        let price = calculator.calculateTicketPrice(tickets : 5)
        XCTAssertNotNil(price)
        let expectedPrice = 500
        XCTAssertTrue(expectedPrice == price)
    }
    
    func testPassingNegativeNumber(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
        
        let price = calculator.calculateTicketPrice(tickets : -5)
        XCTAssertNotNil(price)
        let expectedPrice = 0
        XCTAssertTrue(expectedPrice == price)
    }
    func testMaximumNumberOfTickets(){
        let calculator =  PriceCalculator()
        XCTAssertNotNil(calculator)
        
        let price = calculator.calculateTicketPrice(tickets : 11)
        XCTAssertNotNil(price)
        let expectedPrice = 0
        XCTAssertTrue(expectedPrice == price)
    }
    
}
