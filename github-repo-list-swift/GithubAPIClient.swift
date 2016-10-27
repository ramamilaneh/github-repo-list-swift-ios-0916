//
//  FISGithubAPIClient.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubAPIClient {
    
    class func getRepositories(with completion: @escaping ([[String :AnyObject]]) -> Void) {
        
        let urlString = "https://api.github.com/repositories?client_id="+clientID+"&client_secret="+clientSecret
        let url = URL(string: urlString)
        if let unwrappedUrl = url {
            let session = URLSession.shared
            
            let task = session.dataTask(with: unwrappedUrl) { (data, response, error) in
                
                if let unwrappedData = data {
                    do {
                        let responseJson = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [[String: AnyObject]]
                        completion(responseJson)
                    }catch {
                        print(error)
                    }
                    
                }
            }
            task.resume()
            
        }
        
    }
    
}



