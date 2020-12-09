//
//  MainCoordinator.swift
//  DesafioBTG
//
//  Created by Edgar Sgroi on 08/12/20.
//

import UIKit

struct MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewModel = ConverterViewModel()
        let viewController = ConverterViewController(viewModel: viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    
}
