//
//  AutoLayout.swift
//  DesafioBTG
//
//  Created by Edgar Sgroi on 08/12/20.
//

import Foundation

import UIKit
/**
 Property wrapper used to make it easier to instantiate a `UIView` or
 its subclasses ready for Auto layout. **You should only use this property wrapper if you only**
 **need the object to be initialized with the following init:** `init(frame: .zero)`.
*/
@propertyWrapper final class AutoLayout<View: UIView> {
    private lazy var view: View = {
        let view = View(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var wrappedValue: View{
        return view
    }
}
