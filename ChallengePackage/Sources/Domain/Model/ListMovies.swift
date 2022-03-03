import Foundation

public struct ListMovies: Codable {
    var id: String
    var title: String
    var artwork: String
    var snapshot: String
    
    public init(id: String, title: String, artwork: String, snapshot: String) {
        self.id = id
        self.title = title
        self.artwork = artwork
        self.snapshot = snapshot
    }
}
