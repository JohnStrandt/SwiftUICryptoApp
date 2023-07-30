//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by John Strandt on 7/26/23.
//

import SwiftUI


extension UIApplication {
    
    func endEditing() {
        // #selector(objective C function: UIResponder...)
        // dismiss the keyboard and end any other editing on the device.
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
