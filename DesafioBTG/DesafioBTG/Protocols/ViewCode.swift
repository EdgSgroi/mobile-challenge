//
//  ViewCode.swift
//  DesafioBTG
//
//  Created by Edgar Sgroi on 08/12/20.
//

import UIKit

/// Protocol used to defines the `ViewCode` inicializaton and setups.
protocol ViewCode {
    func addViewToHierarchy()
    func setUpConstraints()
    func setUpAdditionalConfiguration()
}

extension ViewCode {
    /// Defines the order in which the methods are to be called.
    func setupView(){
        /// Add views to hierarchy in root view.
        addViewToHierarchy()
        /// Setup views constraints.
        setUpConstraints()
        /// Setup additional configurations like colors.
        setUpAdditionalConfiguration()
    }
    
    /// Make `setupAdditionalConfiguration` non-obligatory.
    func setUpAdditionalConfiguration() {
        return
    }
}
