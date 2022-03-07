import Foundation

public struct Episode: Codable, Identifiable  {
    public var id: Int
    public var name: String
    public var summary: String
    public var image: EpisodeImage
    
    public init(id: Int, name: String, summary: String, image: EpisodeImage) {
        self.id = id
        self.name = name
        self.summary = summary
        self.image = image
    }
}

public struct EpisodeImage: Codable {
    public var medium: String
    public var original: String
    
    public init(medium: String, original: String) {
        self.medium = medium
        self.original = original
    }
}
