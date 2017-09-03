//
//  LocrianMode.swift
//  Notes
//
//  Created by Thiago Lioy on 03/09/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct LocrianMode: Scale {
    public let names: [String] = [
        "Locrian Mode"
    ]
    public let intervals: [Note.Interval] = [
        .halfstep,.wholestep,.wholestep,.halfstep,.wholestep,.wholestep,.wholestep
    ]
    
    public let key: Note
    
    public init(key: Note) {
        self.key = key
    }
}
