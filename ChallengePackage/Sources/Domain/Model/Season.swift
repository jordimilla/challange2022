import Foundation

public struct Season: Codable, Identifiable {
    public var id: Int
    public var name: String
    public var image: SeasonImage
    
    public init(id: Int, name: String, image: SeasonImage) {
        self.id = id
        self.name = name
        self.image = image
    }
}

public struct SeasonImage: Codable {
    public var medium: String
    public var original: String
    
    public init(medium: String, original: String) {
        self.medium = medium
        self.original = original
    }
}
