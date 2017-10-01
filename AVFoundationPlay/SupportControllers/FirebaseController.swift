//
//  FirebaseController.swift
//  AVFoundationPlay
//
//  Created by Thomas Ganley on 9/30/17.
//  Copyright © 2017 Thomas Ganley. All rights reserved.
//

import Foundation
import FirebaseAuth

class FirebaseController {
    
    private let auth = Auth.auth()
    
    static let shared = FirebaseController()
    
    var currentUser: User?
    
    func createUserWith(email: String, password: String, completion: @escaping (Bool, Error?) -> Void) {
        auth.createUser(withEmail: email, password: password) { (user, error) in
            var success = false
            defer { completion(success, error) }
            
            if let error = error { NSLog("Error creating new user: \(error.localizedDescription)"); return }
            self.currentUser = user
            success = true
        }
    }
    
    func loginUserWith(email: String, password: String, completion: @escaping (Bool, Error?) -> Void) {
        auth.signIn(withEmail: email, password: password) { (user, error) in
            var success = false
            defer { completion(success, error) }
            
            if let error = error { NSLog("Error signing in user: \(error.localizedDescription)"); return }
            self.currentUser = user
            success = true
        }
    }
}
