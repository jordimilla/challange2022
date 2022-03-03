import Foundation
import Moya

enum ChallengeApi: Equatable {
    
    case getMovies
    case getMovieBy(id: String)
    
    static func == (lhs: ChallengeApi, rhs: ChallengeApi) -> Bool {
        return lhs.path == rhs.path && lhs.method == rhs.method
    }
}

extension ChallengeApi: TargetType, AccessTokenAuthorizable {
    var authorizationType: AuthorizationType? {
        switch self {
        case .getMovies, .getMovieBy:
            return .bearer
        }
    }
    
    
    var baseURL: URL {
        return URL(string: "https://not.in.use/")!
    }
    
    var path: String {
        switch self {
        case .getMovies:
            return "v3/lists/estrenos-imprescindibles-en-taquilla?classification_id=6&device_identifier=ios&locale=es&market_code=es"
        case .getMovieBy(let id):
            return "v3/movies/\(id)?classification_id=6&device_identifier=ios&"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getMovies,
             .getMovieBy:
            return .get
        }
    }

    public var task: Task {
        switch self {
        case .getMovies:
            return .requestPlain
        case .getMovieBy:
            return .requestPlain
        }
    }
    
    public var validationType: ValidationType {
        return .none
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var headers: [String: String]? {
        return nil
    }
}
