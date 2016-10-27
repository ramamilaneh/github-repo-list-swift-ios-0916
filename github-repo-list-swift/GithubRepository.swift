//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository {
    
    var fullName: String
    var htmlURL: URL
    var repositoryID: String
    
    init(dictionary: [String: Any]) {
        self.repositoryID = String(describing: dictionary["id"]!)
        self.fullName = dictionary["full_name"]! as! String
        self.htmlURL = URL(string: (dictionary["html_url"]! as! String))!
    }
    
}
