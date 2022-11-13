import Vapor

/// Register your application's routes here.
public func routes(_ app: Application) throws {
    app.get { req in
        return try goHome(req)
    }

    app.get("privacidad") { req -> EventLoopFuture<View> in
        return try req.view.render("blog-post", MarkdownView(post: .soltPrivacyES))
    }
}

private func goHome(_ req: Request) throws -> EventLoopFuture<View> {
    return try req.view.render("blog-post", MarkdownView(post: .soltES))
}
