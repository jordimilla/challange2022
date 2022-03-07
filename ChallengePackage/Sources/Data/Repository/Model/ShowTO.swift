import Foundation

public struct ShowTO: Decodable, Encodable {
    var id: Int
    var name: String
    var image: ShowImageTO
}

public struct ShowImageTO: Codable {
    var medium: String
    var original: String
}
