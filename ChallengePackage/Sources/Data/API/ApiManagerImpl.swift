import Foundation
import Moya

class ApiManagerImpl: ApiManager {
    
    private let provider: MoyaProvider<ChallengeApi>
    
    init(provider: MoyaProvider<ChallengeApi>) {
        self.provider = provider
    }
}

extension ApiManagerImpl {
    
    func getCars() {
        
    }
    
    func getCardBy(id: String) {
        
    }
}


