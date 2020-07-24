//
//  ViewController.swift
//  Agenda
//
//  Created by Madison Lee on 7/24/20.
//  Copyright © 2020 Madison Lee. All rights reserved.
//

import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate {

    @IBOutlet var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calendar.delegate = self
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
    }

}

