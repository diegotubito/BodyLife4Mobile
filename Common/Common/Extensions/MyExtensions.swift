//
//  MyExtensions.swift
//  Common
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit

// MARK: DATE
public extension Date {
    func toString(formato: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formato
        let dateString = dateFormatter.string(from: self)
        return dateString
    }
    
    mutating func addMonths(valor: Int) {
        let myCalendar = Calendar(identifier: .gregorian)
        self = myCalendar.date(byAdding: .month, value: valor, to: self)!
        
    }
    
    mutating func addDays(valor: Int) {
        let myCalendar = Calendar(identifier: .gregorian)
        self = myCalendar.date(byAdding: .day, value: valor, to: self)!
    }
    
    func startDay() -> Int {
        let myCalendar = Calendar(identifier: .gregorian)
        return myCalendar.component(.weekday, from: self)
    }
    
    func endDay() -> Int {
        let myCalendar = Calendar(identifier: .gregorian)
        
        // Calculate start and end of the current year (or month with `.month`):
        let interval = myCalendar.dateInterval(of: .month, for: self)!
        
        // Compute difference in days:
        let days = myCalendar.dateComponents([.day], from: interval.start, to: interval.end).day!
        return days
    }
    var day : Int {
        let calendar = Calendar.current
        let dia = calendar.component(.day, from: self)
        
        return dia
    }
    var month : Int {
        let calendar = Calendar.current
        let mes = calendar.component(.month, from: self)
        
        return mes
    }
    
    var year : Int {
        let calendar = Calendar.current
        let mes = calendar.component(.year, from: self)
        
        return mes
    }
    
    var monthName : String {
        let calendar = Calendar.current
        let mes = calendar.component(.month, from: self)
        
        let nombre = Constants.DateConstants.MonthName[mes]?.localized
        
        return nombre ?? "error"
    }
    
    var dayName : String {
        let calendar = Calendar.current
        let dia = calendar.component(.weekday, from: self)
        
        let nombre = Constants.DateConstants.DayName[dia-1].localized
        
        return nombre
    }
}

// MARK: DOUBLE
public extension Double {
   
    func currencyFormat(decimal: Int, symbol: (String)? = nil) -> String {
        let numberFormatter = NumberFormatter()
        // numberFormatter.locale = NSLocale.current
        if symbol != nil {
            numberFormatter.currencySymbol = symbol
        }
        //  numberFormatter.currencyCode = codigoMoneda
        numberFormatter.numberStyle = NumberFormatter.Style.currency
        let formatoFinal = numberFormatter.string(from: NSNumber(value: self))!
        
        return String(formatoFinal)
        
    }
}

// MARK: STRING
public extension String {
    var convertToImage: UIImage? {
        if let decodedData = NSData(base64Encoded: self, options: NSData.Base64DecodingOptions(rawValue: 0) ) {
            if let decodedimage = UIImage(data: decodedData as Data) {
                return decodedimage
            }
        }
        return nil
        
    }
    
    func toDate(formato: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formato
        
        let dateNSDate = dateFormatter.date(from: self)
        
        return dateNSDate
    }
    
    var localized: String {
        //🖕Fuck the translators team, they don’t deserve comments
        return NSLocalizedString(self, comment: "")
    }
    
}


