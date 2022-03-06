//
//  Profile.swift
//  Landmarks
//
//  Created by lev on 06.03.2022.
//

import Foundation

struct Profile {

    var username             : String
    var prefersNotifications = true
    var seasonalPhoto        = Season.winter
    var goalDate             = Date()

    static let `default` = Profile(username: "j_bond")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}

