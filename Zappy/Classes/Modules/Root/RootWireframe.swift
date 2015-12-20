//
//  RootWireframe.swift
//  Zappy
//
//  Created by Issouf M'sa Benaly on 9/15/15.
//  Copyright (c) 2015 Mobilette. All rights reserved.
//

import UIKit

class RootWireframe
{
    
    // MARK: - Presentation
    
    func presentRootViewController(fromWindow window: UIWindow)
    {
        self.presentMediaPlayViewController(fromWindow: window)
    }
    
    private func presentMediaPlayViewController(fromWindow window: UIWindow)
    {
        let presenter = MediaPlayPresenter()
        let interactor = MediaPlayInteractor()
        // let networkController = MediaPlayNetworkController()
        let wireframe = MediaPlayWireframe()
        // interactor.networkController = networkController
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        wireframe.presenter = presenter
        wireframe.presentInterface(fromWindow: window)
    }
}
