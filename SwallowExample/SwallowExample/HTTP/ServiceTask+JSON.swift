//
//  ServiceTask+JSON.swift
//  SwallowExample
//
//  Created by Angelo Di Paolo on 9/30/15.
//  Copyright © 2015 TheHolyGrail. All rights reserved.
//

import Foundation
import THGWebService

enum ServiceTaskDecodeError: ErrorType {
    case FailedToDecodeJSONArray
    case FailedToDecodeJSONObject
}

extension ServiceTask {
    
    public func jsonObject(json: AnyObject, forKey key: String?) -> AnyObject? {
        if let key = key {
            return json[key]
        } else {
            return json
        }
        
    }
}