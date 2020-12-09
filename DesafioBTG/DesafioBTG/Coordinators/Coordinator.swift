//
//  Coordinator.swift
//  DesafioBTG
//
//  Created by Edgar Sgroi on 08/12/20.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}
