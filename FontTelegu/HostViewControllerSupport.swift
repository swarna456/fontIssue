//
//  HostViewControllerSupport.swift
//  FontTelegu
//
//  Created by swarna.pandey on 24/01/24.
//

import Foundation

import SwiftUI

protocol HostViewControllerSupport: View {
    var hostingController: UIViewController? { get set }
    var route: Route? { get set }
}
