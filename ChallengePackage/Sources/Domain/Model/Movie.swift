import Foundation

public struct Movie: Codable {
    
    var title: String
    var description: String
    var image: String
    
    public init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = image
    }
}
