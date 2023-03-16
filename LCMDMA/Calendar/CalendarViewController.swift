//
//  ViewController.swift
//  LCMDMA
//
//  Created by user235453 on 3/9/23.
//

import CalendarKit
import UIKit
import EventKit

class ViewController: DayViewController {
    
    var datesList: [DateList] = DateList.listeDates
    
    private let eventStore = EKEventStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Calendar"
        
        let dateFormatter = ISO8601DateFormatter()
        let eventDate = "2023-07-8T10:00:00+0000"
        move(to: dateFormatter.date(from: eventDate)!)
        
        requestAccessToCalendar()
    }
    
    func subscribeToNotifications(){
        NotificationCenter.default.addObserver(self, selector: #selector(storeChanged(_:)), name: .EKEventStoreChanged, object: nil)
    }
    
    func requestAccessToCalendar() {
        eventStore.requestAccess(to: .event) 	{ success, error in
            
        }
    }
    
    @objc func storeChanged(_ notification: Notification){
        reloadData()
    }

    
    override func eventsForDate(_ date: Date) -> [EventDescriptor] {

        
        let calendarKitEvents = datesList.map { date in
            let ckEvent = Event()
            
            let dateFormatter = ISO8601DateFormatter()
            
            ckEvent.dateInterval.start = dateFormatter.date(from: date.start)!
            ckEvent.dateInterval.end = dateFormatter.date(from: date.end)!
            ckEvent.isAllDay = (0 != 0)
            ckEvent.text = date.text
            ckEvent.color = UIColor.blue
            
            
            /*if let eventColor = ekEvent.calendar.cgColor {
                ckEvent.color = UIColor(cgColor: eventColor)
            }*/
            return ckEvent
        }
        return calendarKitEvents
    }
    
}
