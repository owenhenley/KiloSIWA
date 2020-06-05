//
//  User.swift
//  SIWA
//
//  Created by Owen Henley on 03/06/2020.
//  Copyright © 2020 Owen Henley. All rights reserved.
//

import UIKit
import AuthenticationServices

struct User {
    
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    
    init(credentials: ASAuthorizationAppleIDCredential) {
        self.id = credentials.user
        self.firstName = credentials.fullName?.givenName ?? ""
        self.lastName = credentials.fullName?.familyName ?? ""
        self.email = credentials.email ?? ""
    }
}

extension User {
    var debugDescription: String {
        return """
        ID: \(id)
        First Name: \(firstName)
        Last Name: \(lastName)
        email: \(email)
        """
    }
}
