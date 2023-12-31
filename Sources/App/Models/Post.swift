//
//  Project.swift
//  App
//
//  Created by Pol Quintana on 18/04/2020.
//

import Foundation

struct AllPosts: Encodable {
    let posts: [Post]
}

struct Post: Encodable {
    let id: String
    let title: String
    let description: String
    let date: String
    let isPublic: Bool
    let tags: [String]

    internal init(id: String,
                  title: String,
                  description: String,
                  date: String,
                  isPublic: Bool,
                  tags: [String]) {
        self.id = id
        self.title = title
        self.description = description
        self.date = date
        self.isPublic = isPublic
        self.tags = tags
    }
}

extension Post {
    static var soltES: Post {
        return Post(id: "solt-es",
                    title: "Solt",
                    description: "",
                    date: "Disponible en la App Store",
                    isPublic: true,
                    tags: ["Solt"])
    }

    static var soltPrivacyES: Post {
        return Post(id: "solt-privacy-es",
                    title: "Solt",
                    description: "Política de privacidad",
                    date: "Política de privacidad",
                    isPublic: true,
                    tags: ["Solt", "Privacy"])
    }

    static var yearInReviewPrivacy: Post {
        return Post(id: "year-in-review-privacy",
                    title: "2023 In Review",
                    description: "Privacy Policy",
                    date: "Privacy Policy",
                    isPublic: true,
                    tags: ["2023inreview", "Privacy"])
    }
}
