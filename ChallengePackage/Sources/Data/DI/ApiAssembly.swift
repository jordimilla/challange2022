import Foundation

public class ApiAssembly {
    
    // MARK: Providers
    public static func makeApiManager(url: String) -> ApiManager {
        return ApiManagerImpl(provider: MoyaFactory.getProvider(
            baseUrlProvider: { url }
        ))
    }
}



