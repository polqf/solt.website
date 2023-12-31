import Vapor

/// Register your application's routes here.
public func routes(_ app: Application) throws {
    app.get { req in
        return goHome(req)
    }

    app.get("privacidad") { req -> EventLoopFuture<View> in
        return try req.view.render("blog-post", MarkdownView(post: .soltPrivacyES))
    }

    app.get("year-in-review") { req -> EventLoopFuture<View> in
        return try req.view.render("blog-post", MarkdownView(post: .yearInReviewPrivacy))
    }
}

private func goHome(_ req: Request) -> EventLoopFuture<View> {
    return req.view.render("landing", Landing.solt)
}
