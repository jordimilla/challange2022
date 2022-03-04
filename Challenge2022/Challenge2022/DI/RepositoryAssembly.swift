import Foundation
import Domain
import Data

final class RepositoryAssembly {
    
    static func makeCarsRepository() -> CarsRepository {
        return CarsRepositoryImpl(apiManager: ApiAssembly.makeApiManager())
    }
}
