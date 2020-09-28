//
//  User.swift
//  TableViewUsersList
//
//  Created by Paola Pagotto on 28/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name: String
    var email: String
    var image: String
    init(name: String, email: String, image: String){
        self.name = name
        self.email = email
        self.image = image
    }
}
