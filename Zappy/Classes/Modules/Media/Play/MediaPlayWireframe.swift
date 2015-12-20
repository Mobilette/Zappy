//
//  MediaPlayWireframe.swift
//  Zappy
//
//  Mobilette template version 1.0
//
//  Created by Romain ASNAR on 20/12/15.
//  Copyright © 2015 Mobilette. All rights reserved.
//

import Foundation
import UIKit

let MediaPlayViewControllerIdentifier: String = "MediaPlayViewController"

class MediaPlayWireframe//: StoryboardSegueDelegate
{
	// MARK: - Property

    weak var presenter: MediaPlayPresenter? = nil
    private weak var viewController: MediaPlayViewController? = nil

    // MARK: - Storyboard segue

    /*    
    enum SegueIdentifier: String {
        case PushTo<# Next interface name #> = "pushMediaPlayTo<# Next interface name #>"
    }
    */

    private var preparedSegue: UIStoryboardSegue? = nil

    // MARK: - Presentation

    func presentInterface(fromWindow window: UIWindow)
    {
        let navigationViewController = self.navigationControllerFromStoryboard()
        if let viewController = navigationViewController.viewControllers.first as? MediaPlayViewController {
            viewController.presenter = self.presenter
            self.viewController = viewController
            self.presenter?.view = viewController
            window.rootViewController = navigationViewController
        }
    }

    // MARK: - Prepare interface

    /*
    func prepare<# Interface name #>Interface()
    {
        var presenter = <# Interface name #>Presenter()
        var interactor = <# Interface name #>Interactor()
        var wireframe = <# Interface name #>Wireframe()
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        wireframe.presenter = presenter
        if let segue = self.preparedSegue {
            MBLog.view(MBLog.Level.High, object: "Did prepare <# Interface name #> interface.")
            wireframe.prepareInterface(fromSegue: segue)
        }
        else {
            MBLog.error(MBLog.Level.High, object: "Did fail to prepare <# Interface name #> interface.")
        }
    }
    */
    
    // MARK: - Storyboard
    
    private func mainStoryboard() -> UIStoryboard
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle:NSBundle.mainBundle())
        return storyboard
    }
    
    /*
    private func viewControllerFromStoryboard() -> MediaPlayViewController
    {
    let storyboard = self.mainStoryboard()
    let viewController = storyboard.instantiateViewControllerWithIdentifier(MediaPlayViewControllerIdentifier) as! MediaPlayViewController
    return viewController
    }
    */
    
    private func navigationControllerFromStoryboard() -> UINavigationController
    {
        let storyboard = self.mainStoryboard()
        let navigationController = storyboard.instantiateViewControllerWithIdentifier(MediaPlayViewControllerIdentifier) as! UINavigationController
        return navigationController
    }
}
