import Leaf
import LeafMarkdown
import Vapor

/// Called before your application initializes.
public func configure(_ app: Application) throws {
    app.leaf.tags["markdown"] = Markdown()

    // Register routes to the router
    try routes(app)

    // Register middleware
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.middleware.use(ErrorMiddleware.default(environment: app.environment))

    // Use Leaf for view rendering.
    app.views.use(.leaf)
}
