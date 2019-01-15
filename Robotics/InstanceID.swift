//
//  InstanceID.swift
//  Robotics
//
//  Created by period3 on 12/12/18.
//  Copyright © 2018 period3. All rights reserved.
//

import Foundation
class InstanceID : NSObject{
    typealias InstanceIDHandler = (String?, Error?) -> Void
    typealias InstanceIDTokenHandler = (String?, Error?) -> Void
   
        
        func token()->String
        {
            return ""
        }
    func token(withAuthorizedEntity authorizedEntity: String, scope: String, options: [AnyHashable : Any]? = nil, handler: @escaping InstanceIDTokenHandler)
    {
        
    }

    
    
    
    func getID(handler: @escaping InstanceIDHandler){ return
        
    }
    
}
