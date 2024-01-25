//
//  Localizable.swift
//  FontTelegu
//
//  Created by swarna.pandey on 24/01/24.
//

import Foundation

/// Type used to get the localized string.
public struct Localize {
    /// Enum define the cases which represent key from localized file. The case name should match with the key name used in the localizable file.
    enum Key: String {
        case newsletter
        case darkMode
        case pushNotifications
        case clearAppCache
        case titleTermsOfUse
        case pageTitleFAQ
        case pageTitleEditorialPolicy
        case pageTitlePrivacyPolicy
        case pageTitleContactUs
        case pageTitleLeadership
        case pageTitleAboutUs
        case pageTitleTellAFriend
        case pageTitleRateAndReview
        case pageTitleFeedback
    }
    
    /// Property wrapper to get the actual localized string from localized file
    @propertyWrapper
    public struct LocalizedString {
        var key: Localize.Key
//        let languageManager: LanguageProvider = LanguageManager()
        public var wrappedValue: String {
//            languageManager.fetchValue(for: key)
            let savedAppLanuage = AppLanguage.current
            let path = Bundle.main.path(forResource: savedAppLanuage, ofType: "lproj")
            let bundle = Bundle(path: path ?? "")
            return NSLocalizedString(key.rawValue, tableName: nil, bundle: bundle ?? Bundle.main, value: "", comment: "")
//            NSLocalizedString(key.rawValue, tableName: nil, bundle: Bundle.main, value: "", comment: "")
        }
    }
}

extension Localize {
    @LocalizedString(key: Localize.Key.newsletter)
    static var newsletter
    @LocalizedString(key: Localize.Key.darkMode)
    static var darkMode
    @LocalizedString(key: Localize.Key.pushNotifications)
    static var pushNotifications
    @LocalizedString(key: Localize.Key.clearAppCache)
    static var clearAppCache
    @LocalizedString(key: Localize.Key.titleTermsOfUse)
    static var titleTermsOfUse
    @LocalizedString(key: Localize.Key.pageTitleFAQ)
    static var pageTitleFAQ
    @LocalizedString(key: Localize.Key.pageTitleEditorialPolicy)
    static var pageTitleEditorialPolicy
    @LocalizedString(key: Localize.Key.pageTitlePrivacyPolicy)
    static var pageTitlePrivacyPolicy
    @LocalizedString(key: Localize.Key.pageTitleContactUs)
    static var pageTitleContactUs
    @LocalizedString(key: Localize.Key.pageTitleLeadership)
    static var pageTitleLeadership
    @LocalizedString(key: Localize.Key.pageTitleAboutUs)
    static var pageTitleAboutUs
    @LocalizedString(key: Localize.Key.pageTitleTellAFriend)
    static var pageTitleTellAFriend
    @LocalizedString(key: Localize.Key.pageTitleRateAndReview)
    static var pageTitleRateAndReview
    @LocalizedString(key: Localize.Key.pageTitleFeedback)
    static var pageTitleFeedback
}
