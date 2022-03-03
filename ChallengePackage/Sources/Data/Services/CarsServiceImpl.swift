import Foundation

final class CarsServiceImpl: CarsService {
    
    init(apiManager: ApiManager) {
        self.apiManager = apiManager
    }
    
    func getCars() {
        apiManager.getCars() { [weak self] result in
            switch result {
            case .success(let dataResponse):
                print("success")
            case .failure(let error):
                print("failure")
            }
        }
    }
    
    func getCardBy(id: String) {
        apiManager.getCardBy(id: id) { [weak self] result in
            switch result {
            case .success(let dataResponse):
                print("success")
            case .failure(let error):
                print("failure")
            }
        }
    }
}
