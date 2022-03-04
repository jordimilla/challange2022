import Foundation
import Domain
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

final class RepositoryAssembly {
    
    static func makeCarsRepository() -> MoviesRepository {
        return MoviesRepositoryImpl(apiManager: ApiAssembly.makeApiManager(url: Environment.pre.apiUrl))
    }
}
