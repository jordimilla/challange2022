import Foundation

public struct EpisodeTO: Decodable, Encodable {
    var id: Int
    var name: String
    var summary: String
    var image: EpisodeImageTO
}

public struct EpisodeImageTO: Codable {
    var medium: String
    var original: String
}
