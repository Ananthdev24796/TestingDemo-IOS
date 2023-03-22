//
//  ViewController.swift
//  TestingDemo
//
//  Created by Ananth Nair on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class BookingHelper{
    let firstClassTicketPricing = 200
    let seconfClassTicketPricing = 100
    
    
    func bookMovies(forFirstClass firstClassTickets : Int , SecondClass secondClassTickets : Int ) -> Int{
        
        let firstClassPrice = firstClassTickets * firstClassTicketPricing
        let secondClassPrice = secondClassTickets * seconfClassTicketPricing
        print("booking Movies")
        return secondClassPrice + firstClassPrice
    }
}

