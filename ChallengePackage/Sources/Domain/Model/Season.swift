import Foundation

public struct Season: Codable {
    var id: Int
    var name: String
    var image: SeasonImage
    
    public init(id: Int, name: String, image: SeasonImage) {
        self.id = id
        self.name = name
        self.image = image
    }
}

public struct SeasonImage: Codable {
    var medium: String
    var original: String
    
    public init(medium: String, original: String) {
        self.medium = medium
        self.original = original
    }
}
