//
//  Chord.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public enum ChordIntervals {
    case root
    case minorSecond
    case majorSecond
    case minorThird
    case majorThird
    case perfectFourth
    case diminishedFifth
    case perfectFifth
    case minorSixth
    case majorSixth
    case minorSeventh
    case majorSeventh
    case octave
    
    func intervals() -> [Note.Interval] {
        switch self {
        case .root:
            return []
        case .minorSecond:
            return [.halfstep]
        case .majorSecond:
            return [.wholestep]
        case .minorThird:
            return [.wholestep, .halfstep]
        case .majorThird:
            return [.wholestep, .wholestep]
        case .perfectFourth:
            return [.wholestep, .wholestep, .halfstep]
        case .diminishedFifth:
            return [.wholestep, .wholestep, .wholestep]
        case .perfectFifth:
            return [.wholestep, .wholestep, .wholestep, .halfstep]
        case .minorSixth:
                return [.wholestep, .wholestep, .wholestep, .wholestep]
        case .majorSixth:
            return [.wholestep, .wholestep, .wholestep, .wholestep, .halfstep]
        case .minorSeventh:
            return [.wholestep, .wholestep, .wholestep, .wholestep, .wholestep]
        case .majorSeventh:
            return [.wholestep, .wholestep, .wholestep, .wholestep, .wholestep, .halfstep]
        case .octave:
            return [.wholestep, .wholestep, .wholestep, .wholestep, .wholestep, .wholestep]
        }
    }
}

public protocol Chord {
    var symbol: String {get}
    var key: Note {get}
    var chordIntervals: [ChordIntervals] {get}
    var motherScale: Scale {get}
    
    init(key: Note) 
    
    
    func fullName() -> String
    func chordTones() -> [Note]
}

extension Chord {
    
    public func fullName() -> String {
        return key.fullname() + symbol
    }
    
}
