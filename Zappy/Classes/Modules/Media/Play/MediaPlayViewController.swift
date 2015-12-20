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
import FBSDKLoginKit

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
        self.facebookConnect()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Facebook request
    
    private func facebookConnect()
    {
        let login: FBSDKLoginManager = FBSDKLoginManager()
        login.logInWithReadPermissions(["public_profile", "email", "read_stream"], fromViewController:self, handler: { (result, error) -> Void in
            
            if (FBSDKAccessToken.currentAccessToken() == nil)
            {
                print("Did fail to connect with Facebook")
            } else {
                if result.grantedPermissions.contains("email")
                {
                    print("Did connect with Facebook: \(result)")
                }
            }
        })
    }
}
