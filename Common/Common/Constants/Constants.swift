//
//  Constants.swift
//  Common
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit

struct Constants {
    struct Colors {
        static let BlueBodyLife = UIColor(red: 46/255, green: 49/255, blue: 146/255, alpha: 1)
        static let DarkGray = UIColor(white: 0.1, alpha: 1)
        
    }
    
    struct Fonts {
        static func TitleTableView(size: CGFloat) -> UIFont {
            return UIFont(name: "AppleSDGothicNeo-SemiBold", size: size)!
        }
    }

    struct DateConstants {
        static let MonthName = [1:"Enero".localized, 2:"Febrero".localized, 3:"Marzo".localized, 4:"Abril".localized, 5:"Mayo".localized, 6:"Junio".localized, 7:"Julio".localized, 8:"Agosto".localized, 9:"Septiembre".localized, 10:"Octubre".localized, 11:"Noviembre".localized, 12:"Diciembre".localized]
        
        static let DayName = ["Domingo".localized,
        "Lunes".localized,
        "Martes".localized,
        "Miércoles".localized,
        "Jueves".localized,
        "Viernes".localized,
        "Sábado".localized]

    }

}

