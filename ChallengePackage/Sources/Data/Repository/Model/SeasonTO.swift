import Foundation

public struct SeasonTO: Decodable, Encodable {
    var id: Int
    var name: String
    var image: SeasonImageTO
}

public struct SeasonImageTO: Codable {
    var medium: String
    var original: String
}
