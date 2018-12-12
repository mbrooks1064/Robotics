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
    class func instanceID() -> Self{
        return self.init()
        
    }
    
    
    func getID(handler: @escaping InstanceIDHandler){ return
        
    }
    
}
