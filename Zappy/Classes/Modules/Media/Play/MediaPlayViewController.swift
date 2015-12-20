//
//  MediaPlayViewController.swift
//  Zappy
//
//  Mobilette template version 1.0
//
//  Created by Romain ASNAR on 20/12/15.
//  Copyright © 2015 Mobilette. All rights reserved.
//

import Foundation
import UIKit

class MediaPlayViewController:
    UIViewController,
    MediaPlayViewInterface
{
	// MARK: - Property

    var presenter: MediaPlayModuleInterface? = nil

	// MARK: - Life cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter?.updateView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
