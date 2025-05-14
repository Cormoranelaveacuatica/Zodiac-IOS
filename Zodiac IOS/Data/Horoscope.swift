//
//  Horoscope.swift
//  Zodiac IOS
//
//  Created by Mañanas on 12/5/25.
//

import Foundation
import UIKit

struct Horoscope {
    
    let id: String
    let name: String
    let dates: String
    let image: UIImage
    
    
    static let horoscopeList = [
        Horoscope(id: "Aries", name: "Aries", dates: "MArch 21 to April 19", image: UIImage(named: "horoscope-icons/aries")!),
        Horoscope(id: "Taurus", name: "Taurus", dates: "April 20 to May 20", image: UIImage(named: "horoscope-icons/taurus")!),
        Horoscope(id: "Gemini", name: "Gemini", dates: "May 21 to June 20", image: UIImage(named: "horoscope-icons/gemini")!),
        Horoscope(id: "Cancer", name: "Cancer", dates: "June 21 to July 22", image: UIImage(named: "horoscope-icons/cancer")!),
        Horoscope(id: "Leo", name: "Leo", dates: "July 23 to August 22", image: UIImage(named: "horoscope-icons/leo")!),
        Horoscope(id: "Virgo", name: "Virgo", dates: "August 23 to September 22", image: UIImage(named: "horoscope-icons/virgo")!),
        Horoscope(id: "Libra", name: "Libra", dates: "September 23 to October 22", image: UIImage(named: "horoscope-icons/libra")!),
        Horoscope(id: "Scorpio", name: "Scorpio", dates: "October 23 to November 21", image: UIImage(named: "horoscope-icons/scorpio")!),
        Horoscope(id: "Sagittarius", name: "Sagittarius", dates: "November 22 to December 21", image: UIImage(named: "horoscope-icons/sagittarius")!),
        Horoscope(id: "Capricorn", name: "Capricorn", dates: "December 22 to January 19", image: UIImage(named: "horoscope-icons/capricorn")!),
        Horoscope(id: "Aquarius", name: "Aquarius", dates: "January 20 to February 18", image: UIImage(named: "horoscope-icons/aquarius")!),
        Horoscope(id: "Pisces", name: "Pisces", dates: "February 19 to March 20", image: UIImage(named: "horoscope-icons/pisces")!)

    ]
    
    static func getAll() -> [Horoscope] {
        return horoscopeList
    }
    
}
