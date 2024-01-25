//
//  CellItems.swift
//  FontTelegu
//
//  Created by swarna.pandey on 24/01/24.
//

import Foundation

enum CellItem: CaseIterable {
    case newsletter
    case darkMode
    case pushNotification
    case clearAppCache
    case aboutUs
    case leadership
    case feedback
    case privacyPolicy
    case editorialPolicy
    case faq
    case termsOfUse
    case tellAFriend
    case rateAndReview

    var cellName: String {
        switch self {
        case .newsletter: return Localize.newsletter
        case .darkMode: return Localize.darkMode
        case .pushNotification: return Localize.pushNotifications
        case .clearAppCache: return Localize.clearAppCache
        case .aboutUs: return Localize.pageTitleAboutUs
        case .leadership: return Localize.pageTitleLeadership
        case .feedback: return Localize.pageTitleFeedback
        case .privacyPolicy: return Localize.pageTitlePrivacyPolicy
        case .editorialPolicy: return Localize.pageTitleEditorialPolicy
        case .faq: return Localize.pageTitleFAQ
        case .termsOfUse: return Localize.titleTermsOfUse
        case .tellAFriend: return Localize.pageTitleTellAFriend
        case .rateAndReview: return Localize.pageTitleRateAndReview
        }
    }
}

extension CellItem {
    
    static var displayCellItems: [CellItem] {
        CellItem.allCases
    }
}
