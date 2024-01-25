//
//  AppFont.swift
//  FontTelegu
//
//  Created by swarna.pandey on 23/01/24.
//

import Foundation

enum AppFont {
    
    /// regular
    case regular
    /// bold
    case bold
    /// medium
    case medium
    /// light
    case light
    /// italic
    case italic
    
    /// Returns font name
    var name: String {
        switch self {
        case .regular: return selectedLanguageFontName(type: AppFont.regular)
        case .bold: return selectedLanguageFontName(type: AppFont.bold)
        case .medium: return selectedLanguageFontName(type: AppFont.medium)
        case .light: return selectedLanguageFontName(type: AppFont.light)
        case .italic: return selectedLanguageFontName(type: AppFont.italic)
        }
    }
    
    var value: String {
        switch self {
        case .regular: return "Regular"
        case .bold: return "Bold"
        case .medium: return "Medium"
        case .light: return "Light"
        case .italic: return "Italic"
        }
    }
    
    func selectedLanguageFontName(type: AppFont) -> String {
        switch AppLanguage(rawValue: UserDefaults.standard.string(forKey: "AppLanguage") ?? "en") {
        case .english:
            return AppFontName.roboto.value + type.value
        case .hindi:
            return getFontText(type, fontName: AppFontName.notoSansDevanagari.value)
        case .kannada:
            return getFontText(type, fontName: AppFontName.notoSansKannada.value)
        case .telugu:
            return getFontText(type, fontName: AppFontName.notoSansTelugu.value)
        case .none:
            return AppFontName.roboto.value + type.value
        }
    }
    
    func getFontText(_ fontType: AppFont, fontName: String) -> String {
        if fontType == AppFont.italic {
            return "\(fontName)Thin"
        } else {
            return fontName + fontType.value
        }
    }
}

enum AppFontName {
    case roboto
    case notoSansDevanagari
    case notoSansKannada
    case notoSansTelugu
    
    var value: String {
        switch self {
        case .roboto: return "Roboto-"
        case .notoSansDevanagari: return "NotoSansDevanagari-"
        case .notoSansKannada: return "NotoSansKannada-"
        case .notoSansTelugu: return "NotoSansTelugu-"
        }
    }
}
