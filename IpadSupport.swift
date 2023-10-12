//
//  IpadSupport.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/12/23.
//

import SwiftUI

extension UIDevice {
    static var isIPAD: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    static var isIPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
