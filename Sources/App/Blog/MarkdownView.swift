//
//  MarkdownView.swift
//  App
//
//  Created by Pol Quintana on 13/12/2020.
//

import Foundation
import Vapor

struct MarkdownView: Encodable {
    let title: String
    let date: String
    let markdown: String

    init(post: Post) throws {
        title = post.title
        date = post.date
        let workDirectory = DirectoryConfiguration.detect().resourcesDirectory
        let fileURL = URL(fileURLWithPath: workDirectory)
            .appendingPathComponent("Posts", isDirectory: true)
            .appendingPathComponent(post.id + ".md", isDirectory: false)
        markdown = try String(data: Data(contentsOf: fileURL), encoding: .utf8)!
    }
}
