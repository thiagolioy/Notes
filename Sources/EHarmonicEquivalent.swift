//
//  EHarmonicEquivalent.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct EHarmonicEquivalent{
    private static let eharmonics: [Note: Note] = [
        Note(name: .C, intonation: .natural): Note(name: .B, intonation: .sharp),
        Note(name: .C, intonation: .sharp): Note(name: .D, intonation: .flat),
        Note(name: .C, intonation: .doubleSharp): Note(name: .D, intonation: .natural),
        Note(name: .D, intonation: .natural): Note(name: .E, intonation: .doubleFlat),
        Note(name: .D, intonation: .sharp): Note(name: .E, intonation: .flat),
        Note(name: .E, intonation: .natural): Note(name: .F, intonation: .flat),
        Note(name: .E, intonation: .sharp): Note(name: .F, intonation: .natural),
        Note(name: .F, intonation: .sharp): Note(name: .G, intonation: .flat),
        Note(name: .F, intonation: .doubleSharp): Note(name: .G, intonation: .natural),
        Note(name: .G, intonation: .sharp): Note(name: .A, intonation: .flat),
        Note(name: .A, intonation: .natural): Note(name: .B, intonation: .doubleFlat),
        Note(name: .A, intonation: .sharp): Note(name: .B, intonation: .flat),
        Note(name: .B, intonation: .natural): Note(name: .C, intonation: .flat)
    ]
    
    public static func equivalent(of note:Note) -> Note? {
        for (key,value) in eharmonics {
            if key == note {
                return value
            }else if value == note {
                return key
            }
        }
        return nil
    }
}
