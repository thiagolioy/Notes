//
//  NoteName.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct Note {
    
    public enum Name: String {
        case A,B,C,D,E,F,G
    }
    
    public enum Intonation: String {
        case flat = "♭"
        case natural = ""
        case sharp = "♯"
    }
    
    public enum Interval: Int {
        case halfstep
        case wholestep
    }
    
    public let name: Name
    public let intonation: Intonation
    
    
    public func fullname() -> String{
        return name.rawValue + intonation.rawValue
    }
    
    public init(name: Name, intonation: Intonation){
        self.name = name
        self.intonation = intonation
    }
}

extension Note: Hashable {
    public var hashValue: Int {
        return name.hashValue + intonation.hashValue
    }
   
    public static func ==(lhs: Note, rhs: Note) -> Bool{
        return lhs.name == rhs.name &&
                lhs.intonation == rhs.intonation
    }
}

extension Note {
    
    public func eharmonicEquivalent() -> Note?{
        return EHarmonicEquivalent.equivalent(of: self)
    }
    
    public func equivalent(to note:Note) -> Bool{
        return eharmonicEquivalent() == note
    
    }
   
}

extension Note {
    public func add(interval: Note.Interval) -> Note{
        return ChromaticScale.add(interval: interval, to: self)
    }
    public func minus(interval: Note.Interval) -> Note{
        return ChromaticScale.minus(interval: interval, to: self)
    }
}

extension Note {
    public func next() -> Note{
        return ChromaticScale.next(of: self)
    }
    public func previous() -> Note{
        return ChromaticScale.previous(of: self)
    }
}
