//
//  LanguageOptionView.swift
//  FontTelegu
//
//  Created by swarna.pandey on 23/01/24.
//

import SwiftUI

struct LanguageOptionView: View {
        
        let language: Language
        @Binding var selectedLanguage: String
        
        init(language: Language, selectedLanguage: Binding<String>) {
            self.language = language
            _selectedLanguage = selectedLanguage
        }

        var body: some View {
            VStack {
                Button(action: {
                    selectedLanguage = language.languageText
                }, label: {
                    HStack {
                        Image(selectedLanguage == language.languageText ? "radioOn" : "radioOff")
                            .frame(width: 20, height: 20, alignment: .leading)
                            .padding(.trailing, 20)
                        Text(language.languageText)
                            .font(Font(UIFont(name: AppFont.regular.name, size: 16) ?? UIFont()))
                    }
                    .padding(17)
                    .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: .leading)
                })
            }
        }
    }
