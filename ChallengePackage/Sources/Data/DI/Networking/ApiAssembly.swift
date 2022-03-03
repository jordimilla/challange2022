import Foundation

final class ApiAssembly {
    
    // MARK: Providers
    static func makeApiManager() -> ApiManager {
        return ApiManagerImpl(provider: MoyaFactory.getProvider(
            baseUrlProvider: { "" }
        ))
    }
}
