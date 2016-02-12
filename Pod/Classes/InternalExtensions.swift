//
//  InternalExtensions.swift
//  Pods
//
//  Created by Thiago Lioy on 2/11/16.
//
//

import Foundation

extension Int {
    func times(f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
}
