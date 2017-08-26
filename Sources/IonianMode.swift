//
//  IonianMode.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct IonianMode: Scale {
    public let names: [String] = [
        "Ionian Mode",
        "Major Scale"
    ]
    public let intervals: [Note.Interval] = [
        .wholestep,.wholestep,.halfstep,.wholestep,.wholestep,.wholestep,.halfstep
    ]
}
