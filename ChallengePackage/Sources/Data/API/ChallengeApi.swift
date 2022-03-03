import Foundation
import Moya

enum ChallengeApi: Equatable {
    
    case getCars()
    case getCardBy(id: String)
    
    static func == (lhs: ChallengeApi, rhs: ChallengeApi) -> Bool {
        return lhs.path == rhs.path && lhs.method == rhs.method
    }
}

extension ChallengeApi: TargetType, AccessTokenAuthorizable {
    
    var baseURL: URL {
        return URL(string: "https://not.in.use/")!
    }
    
    var authorizationType: AuthorizationType? {
        return .none
    }
    
    var headers: [String: String]? {
        return [:]
    }
    
    var method: Moya.Method {
        switch self {
        case .getCars,
            .getCardBy
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .getCars:
            return ""
        case .getCardBy:
            return ""
        }
    }
    
    var validationType: ValidationType {
        return .successCodes
    }
}
