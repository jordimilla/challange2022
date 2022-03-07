import Foundation
import Moya

enum ChallengeApi: Equatable {
    
    case getShows(page: Int)
    case getSeasons(id: Int)
    case getMovieBy(id: Int)
    
    static func == (lhs: ChallengeApi, rhs: ChallengeApi) -> Bool {
        return lhs.path == rhs.path && lhs.method == rhs.method
    }
}

extension ChallengeApi: TargetType, AccessTokenAuthorizable {
    var authorizationType: AuthorizationType? {
        switch self {
        case .getShows, .getSeasons, .getMovieBy:
            return .bearer
        }
    }
    
    
    var baseURL: URL {
        return URL(string: "https://not.in.use/")!
    }
    
    var path: String {
        switch self {
        case .getShows:
            return "shows"
        case .getSeasons(let id):
            return "shows/\(id)/seasons"
        case .getMovieBy(let id):
            return "seasons/\(id)/episodes"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getShows,
             .getSeasons,
             .getMovieBy:
            return .get
        }
    }

    public var task: Task {
        switch self {
        case .getShows(let page):
            return .requestParameters(parameters: ["page": page], encoding: URLEncoding.default)
        case .getSeasons,
            .getMovieBy:
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
