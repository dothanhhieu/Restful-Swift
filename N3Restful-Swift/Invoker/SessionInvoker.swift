//
//  SessionInvoker.swift
//  N3Restful-Swift
//
//  Created by Nhan Nguyen on 2/21/16.
//  Copyright © 2016 Nhan Nguyen. All rights reserved.
//

import UIKit

class SessionInvoker: BaseInvoker {
    
    init() {
        super.init(controllerName: "sessions")
    }
    
    func signIn(param: SignInParam, completion: (result: SignInResult?, error: RESTError?) -> Void) {
        let request = requestWithMethodName(nil)
        
        request.POST(param) { (result: SignInResult?, error) -> () in
            completion(result: result, error: error)
        }
    }
    
    func signInFacebook(fbToken: String, completion: (result: SignInResult?, error: RESTError?) -> Void) {
        let request = requestWithMethodName("facebook")
        let dictionary = ["facebook_token": fbToken]
        
        request.requestWithDictionary(dictionary, method: .POST) { (result: SignInResult?, error) -> () in
            completion(result: result, error: error)
        }
    }
}