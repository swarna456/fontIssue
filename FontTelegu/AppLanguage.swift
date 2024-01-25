//
//  AppLanguage.swift
//  FontTelegu
//
//  Created by swarna.pandey on 23/01/24.
//

import Foundation
    
enum AppLanguage: String, Codable {
    case english = "en"
    case hindi = "hi"
    case kannada = "kn"
    case telugu = "te"
    
    var languageText: String {
        switch self {
        case .english: return "English"
        case .hindi: return "Hindi ( हिंदी )"
        case .kannada: return "Kannada ( ಕನ್ನಡ )"
        case .telugu: return "Telugu ( తెలుగు )"
        }
    }
    /// the current language of the app
    static var current: String { UserDefaults.standard.string(forKey: "AppLanguage") ?? "en" }
}
