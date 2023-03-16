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
    
    private let eventStore = EKEventStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Calendar"
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
        let startDate = date
        var oneDayComponents = DateComponents()
        oneDayComponents.day = 1
        
        let endDate = calendar.date(byAdding: oneDayComponents, to: startDate)!
        
        let predicate = eventStore.predicateForEvents(withStart: startDate, end: endDate, calendars: nil)
        
        let eventKitEvents = eventStore.events(matching: predicate)
        
        let calendarKitEvents = eventKitEvents.map { ekEvent in
            let ckEvent = Event()
            /*ckEvent.startDate = ekEvent.startDate  //C'est ici que ça merde
            ckEvent.endDate = ekEvent.endDate*/
            ckEvent.isAllDay = ekEvent.isAllDay
            ckEvent.text =  ekEvent.title
            if let eventColor = ekEvent.calendar.cgColor {
                ckEvent.color = UIColor(cgColor: eventColor)
            }
            return ckEvent
        }
        return calendarKitEvents
    }
    
}
