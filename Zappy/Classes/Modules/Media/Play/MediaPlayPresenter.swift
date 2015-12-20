//
//  MediaPlayPresenter.swift
//  Zappy
//
//  Mobilette template version 1.0
//
//  Created by Romain ASNAR on 20/12/15.
//  Copyright © 2015 Mobilette. All rights reserved.
//

import Foundation

class MediaPlayPresenter:
    MediaPlayModuleInterface,
    MediaPlayInteractorOutput
{
	// MARK: - Property
    
    weak var view: MediaPlayViewInterface? = nil
    var interactor: MediaPlayInteractorInput? = nil
    var wireframe: MediaPlayWireframe? = nil

    // MARK: - MediaPlay module interface

    func updateView()
    {
        
    }
    
    // MARK: - MediaPlay interactor output interface

    // MARK: - Converting entities
}