//
//  InstrumentString.swift
//  Pods
//
//  Created by Thiago Lioy on 2/17/16.
//
//

import Foundation

public struct InstrumentString {
    public let tunning:Note
    public let notes:[Note]
    
    public init(tunning:Note, maxFretNumber max:Int){
        self.tunning = tunning
        var ns:[Note] = [tunning]
        (max-1).times {
            let nextNote:Note = ns.last!
            ns.append(nextNote.next())
        }
        notes = ns
    }
}