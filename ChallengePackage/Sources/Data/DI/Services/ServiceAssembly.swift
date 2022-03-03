import Foundation

final class ServiceAssembly {
    
    static func makeCarsService() -> CarService {
        return CarsServiceImpl(apiManager: ApiAssembly.makeApiManager())
    }
}
