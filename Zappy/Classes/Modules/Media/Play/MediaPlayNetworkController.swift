//
//  MediaPlayNetworkController.swift
//  Zappy
//
//  Mobilette template version 1.0
//
//  Created by Romain ASNAR on 20/12/15.
//  Copyright © 2015 Mobilette. All rights reserved.
//

import Foundation
// import PromiseKit
// import ObjectMapper
import MobiletteFoundation

class MediaPlayNetworkController: MediaPlayNetworkProtocol
{
    // MARK: - Property
    
    // MARK: - Life cycle

    // MARK: - Network
    
    // MARK: - Error
    
    enum MediaPlayNetworkControllerError: MBError
    {
        case Mapping(String)
        
        var code: Int {
            switch self {
            case .Mapping:
                return 500
            }
        }
        
        var domain: String {
            return "NetworkControllerDomain"
        }
        
        var description: String {
            switch self {
            case .Mapping:
                return "Mapping Error."
            }
        }
        
        var reason: String {
            switch self {
            case .Mapping(let JSONString):
                return "Response string can not be mapped to the object.\nString: \(JSONString)."
            }
        }
    }
}