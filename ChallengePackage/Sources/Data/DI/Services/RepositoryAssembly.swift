import Foundation
import Domain

final class RepositoryAssembly {
    
    static func makeCarsRepository() -> CarsRepository {
        return CarsRepositoryImpl(apiManager: ApiAssembly.makeApiManager())
    }
}
