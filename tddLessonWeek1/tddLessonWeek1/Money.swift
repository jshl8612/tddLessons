//
//  Money.swift
//  tddLessonWeek1
//
//  Created by Shenglong Jiang on 28/03/2019.
//  Copyright © 2019 Shenglong Jiang. All rights reserved.
//

import Foundation

class Money: Equatable {
    var count: Int = 0
    var valPerCount: Float {
        return 1
    }
    
    required init(count: Int) {
        self.count = count
    }
    
    func exchange(toClass: Money.Type) -> Money {
        return toClass.init(count: Int(Float(self.count) * (valPerCount / toClass.init(count: 1).valPerCount)))
    }
}


class Dallar: Money {
    
    override var valPerCount: Float {
        return 1000
    }
}

class Krw: Money {
    override var valPerCount: Float {
        return 1
    }
}

extension Money {
    
    static func += (lhs: inout Money, rhs: Money) {
        lhs.count += Int(Float(rhs.count) * (rhs.valPerCount / lhs.valPerCount))
    }
    
    static func + (lhs: Money, rhs: Money) -> Money {
        var result = lhs
        result += rhs
        
        return result
    }
    
    static func -= (lhs: inout Money, rhs: Money) {
        lhs.count -= Int(Float(rhs.count) * (rhs.valPerCount / lhs.valPerCount))
    }
    
    static func - (lhs: Money, rhs: Money) -> Money {
        var result = lhs
        result -= rhs
        
        return result
    }
    
    static func == (lhs: Money, rhs: Money) -> Bool {
        return Float(lhs.count) * lhs.valPerCount == Float(rhs.count) * rhs.valPerCount
    }
}

