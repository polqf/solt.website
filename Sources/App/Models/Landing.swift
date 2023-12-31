//
//  Landing.swift
//  
//
//  Created by Pol Quintana on 14/11/22.
//

import Foundation

extension Landing {
    static var solt: Landing {
        Landing(title: "Are you investing in Real Estate?",
                subtitle: "Solt is for you!",
                appStoreImagePath: "images/app-store.png",
                appDownloadURL: "https://apps.apple.com/app/solt/id1633207843",
                headerImagePath: "images/promo-landscape.png",
                tutorial: Tutorial.firstProperty)
    }
}

extension Tutorial {
    static var firstProperty: Tutorial {
        Tutorial(steps: [
            Step(index: 1, title: "Define your profile", description: "You can setup your profile"),
            Step(index: 2, title: "Add a new property", description: "Fill the required information"),
            Step(index: 3, title: "Go through all the information", description: "Expand the section to get full visibility"),
            Step(index: 4, title: "Evaluate the offer", description: "You can try different offers to see which one adapts better to your expected results"),
        ],
        mediaPath: "images/first-property.mov")
    }
}

struct Landing: Encodable {
    let title: String
    let subtitle: String
    let appStoreImagePath: String
    let appDownloadURL: String
    let headerImagePath: String

    let tutorial: Tutorial
}

struct Tutorial: Encodable {
    struct Step: Encodable {
        let index: Int
        let title: String
        let description: String
    }

    let steps: [Step]
    let mediaPath: String
}
