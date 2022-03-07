import Foundation

public struct Show: Codable, Identifiable {
    public var id: Int
    public  var name: String
    public var image: ShowImage
    
    public init(id: Int, name: String, image: ShowImage) {
        self.id = id
        self.name = name
        self.image = image
    }
}

public struct ShowImage: Codable {
    public var medium: String
    public var original: String
    
    public init(medium: String, original: String) {
        self.medium = medium
        self.original = original
    }
}
