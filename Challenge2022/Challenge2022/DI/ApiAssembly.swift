import Foundation
import Data

public enum Environment: Equatable {
    //The idea of ​​this eum is to have a relationship with environment variables in the project
    case prod
    case pre
    
    public var apiUrl: String {
        switch self {
        case .prod: return "https://gizmo.rakuten.tv/"
        case .pre: return "https://gizmo.rakuten.tv/"
        }
    }
}

final class ApiAssembly {
    
    // MARK: Providers
    static func makeApiManager() -> ApiManager {
        return ApiManagerImpl(provider: MoyaFactory.getProvider(
            baseUrlProvider: { Environment.pre.apiUrl}
        ))
    }
}



