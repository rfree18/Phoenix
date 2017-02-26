//
//  RouteManager.swift
//  Phoenix
//
//  Created by Ross Freeman on 2/25/17.
//  Copyright © 2017 Ross Freeman. All rights reserved.
//

import Foundation
import Alamofire

class RouteManager {
    let agencyId = 72
    let baseURL = "https://transloc-api-1-2.p.mashape.com/"
    let headers = ["X-Mashape-Key": Keys.transLocKey, "Accept" : "application/json"]
    
    func getRoutes() {
        let endPoint = "\(baseURL)routes.json"
        let parameters = ["agencies": agencyId]
        
        Alamofire.request(endPoint, parameters: parameters, headers: headers).responseJSON { (response) in
            debugPrint(response)
        }
        
    }
    
    func getVehicles(routes: [String]) {
        
    }
}
