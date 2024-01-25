//
//  Router.swift
//  FontTelegu
//
//  Created by swarna.pandey on 24/01/24.
//

import Foundation
import Foundation
import UIKit
import AVFoundation
import SwiftUI

enum Route {
    /// Vc
    case vc
}

/// Enum defines screen transistions supported in the app.
enum RouteTransistion {
    /// Push transistion
    case push(animation: Bool? = true)
    /// Model transistion
    case model(animation: Bool? = true, presentationStyle: UIModalPresentationStyle? = UIModalPresentationStyle.automatic)
}

//swiftlint:disable cyclomatic_complexity
final class Router: Routing {
    var routePassData: [String : Any] = [:]
    internal var controller: UIViewController = UIViewController()
    internal var transition: RouteTransistion = .push(animation: true)
    
    func navigate(to route: Route, from controller: UIViewController, transistion: RouteTransistion) {
        self.transition = transistion
        self.controller = controller
        switch route {
        case .vc: navigateToViewController()
        }
    }
    
    private func navigate(to viewController: UIViewController) {
        switch transition {
        case let .push(animation):
            controller.navigationController?.pushViewController(viewController, animated: animation!)
        case let .model(animation, presentationStyle):
            controller.modalPresentationStyle = presentationStyle!
            controller.present(viewController, animated: animation!)
        }
    }
    
    private func navigateToViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            navigate(to: vc)
        }
    }
}
