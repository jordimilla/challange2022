import Foundation

public struct ListMoviesTO: Decodable, Encodable {
    var id: String
    var title: String
    var artwork: String
    var snapshot: String
}
