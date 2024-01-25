//
//  Routing.swift
//  FontTelegu
//
//  Created by swarna.pandey on 24/01/24.
//

import Foundation
import UIKit

/// Protocol defines properties and methods for App screen routing.
protocol Routing: AnyObject {
    
    /// routePassData used to pass the data to new screen.
    var routePassData: [String: Any] { get set }
    
    /// controller from which navigation to new screen takes initiates.
    var controller: UIViewController { get set }
    
    /// transistion to be used during screen routing
    var transition: RouteTransistion { get set }
    
    /// Navigation function to route to new screen
    func navigate(to route: Route, from controller: UIViewController, transistion: RouteTransistion)
}
