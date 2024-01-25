//
//  LanguageSelectionView.swift
//  FontTelegu
//
//  Created by swarna.pandey on 23/01/24.
//

import SwiftUI

struct Language {
    var languageText: String
    var languageCode: String
}


struct LanguageSelectionView: HostViewControllerSupport {
    var hostingController: UIViewController?
    var route: Route?
    
    @StateObject var languageViewModel: LanguageSelectionViewModel
    
    init() {
        _languageViewModel = StateObject(wrappedValue: LanguageSelectionViewModel())
    }
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 60, height: 60)
            Text("Choose App Language")
                .font(Font(UIFont(name: AppFont.bold.name, size: 18) ?? UIFont()))
            LazyVStack(alignment: .leading) {
                ForEach(languageViewModel.languages, id: \.languageText) { language in
                    Spacer()
                    LanguageOptionView(language: language, selectedLanguage: $languageViewModel.selectedLanguage)
                }
            }
            .padding([.leading, .bottom, .trailing], 17)
            
            Button("Apply") {
                languageViewModel.saveSelectedLanguage()
                navigateToVC()
            }
        }
    }
    
    func navigateToVC() {
        let router = Router()
        router.navigate(to: .vc, from: hostingController ?? UIViewController(), transistion: .push(animation: false))
    }
}

class CustomHostingController<Content>: UIHostingController<Content> where Content: HostViewControllerSupport {

    internal override init(rootView: Content) {
        super.init(rootView: rootView)
        self.rootView.hostingController = self
        self.rootView.hostingController?.view.backgroundColor = UIColor.white
    }
    
    convenience init(rootView: Content, route: Route) {
        self.init(rootView: rootView)
        self.rootView.route = route
    }
    
    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Deinit - CustomHostingController")
    }
}
