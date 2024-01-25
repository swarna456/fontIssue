//
//  LanguageSelectionViewModel.swift
//  FontTelegu
//
//  Created by swarna.pandey on 23/01/24.
//

import Foundation

class LanguageSelectionViewModel: ObservableObject {
    @Published var selectedLanguage: String
    
    init() {
        selectedLanguage = AppLanguage.english.languageText
    }
    
    var languages: [Language] = [
        Language(languageText: AppLanguage.english.languageText, languageCode: AppLanguage.english.rawValue)
        ,Language(languageText: AppLanguage.hindi.languageText, languageCode: AppLanguage.hindi.rawValue),
        Language(languageText: AppLanguage.kannada.languageText, languageCode: AppLanguage.kannada.rawValue),
        Language(languageText: AppLanguage.telugu.languageText, languageCode: AppLanguage.telugu.rawValue)]
    
    // returning selected language
    func getSelectedLanguage() -> String {
        for language in languages where UserDefaults.standard.string(forKey: "AppLanguage") ?? "en" == language.languageCode {
            selectedLanguage = language.languageText
        }
        return selectedLanguage
    }
    
    // saving selected language code in UserDefaults
    func saveSelectedLanguage() {
        for language in languages where selectedLanguage == language.languageText {
            UserDefaults.standard.setValue(language.languageCode, forKey: "AppLanguage")
        }
    }
}
