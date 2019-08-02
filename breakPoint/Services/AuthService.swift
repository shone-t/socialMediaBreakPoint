//
//  AuthService.swift
//  breakPoint
//
//  Created by MacBook Pro on 7/28/19.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping(_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            guard let user_f = authResult?.user else {
                userCreationComplete(false, error)
                return
            }
            let userData = ["provider": user_f.providerID, "email": user_f.email]
            DataService.instance.createDBUser(uid: user_f.uid, userData: userData)
            userCreationComplete(true, nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping(_ status: Bool, _ error: Error?) -> ()) {
        
        Auth.auth().signIn(withEmail: email, password: password) { (authResutl, error) in
//            guard let user = authResutl?.user else {
//                loginComplete(false, error)
//                return
//            }
            if error != nil {
                loginComplete(false, error)
                return
            }
            loginComplete(true, nil)
        }
        
    }
}
