//
//  Symday.swift
//  Symday
//
//  Created by Tatsuya Tobioka on 3/20/16.
//  Copyright © 2016 Tatsuya Tobioka. All rights reserved.
//

import Foundation

struct Symday {
    var locale = NSLocale.currentLocale()
    var timeZone = NSTimeZone.systemTimeZone()
    var template = "yyyyMMMd"
    
    var formatter: NSDateFormatter {
        let formatter = NSDateFormatter()
        formatter.locale = locale
        formatter.timeZone = timeZone
        return formatter
    }
    
    init(locale: NSLocale? = nil, timeZone: NSTimeZone? = nil, template: String? = nil) {
        if let locale = locale {
            self.locale = locale
        }
        if let timeZone = timeZone {
            self.timeZone = timeZone
        }
        if let template = template {
            self.template = template
        }
    }
    
    func format(date: NSDate) -> String {
        return format(date, template: template)
    }

    func format(date: NSDate, template: String) -> String {
        let formatter = self.formatter
        let format = NSDateFormatter.dateFormatFromTemplate(template, options: 0, locale: formatter.locale)
        formatter.dateFormat = format
        return formatter.stringFromDate(date)
    }
}