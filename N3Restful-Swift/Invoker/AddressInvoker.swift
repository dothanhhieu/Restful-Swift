//
//  AddressInvoker.swift
//  N3Restful-Swift
//
//  Created by Nhan Nguyen on 2/19/16.
//  Copyright © 2016 Nhan Nguyen. All rights reserved.
//

import Foundation

class AddressInvoker: RESTInvoker {
    
    init() {
        super.init(controllerName: "addresses")
    }
    
    func getListAddress(_ completion: @escaping (_ listProvinces: ListProvinceResult?, _ error: RESTError?) -> Void) {
        if let request = createRequest(methodName: nil) {
            request.addQueryParam("updated_at", value: "\(0)" as AnyObject)
            
            request.get { (object: ListProvinceResult?, error) -> () in
                completion(object, error)
            }
        }
    }
}
