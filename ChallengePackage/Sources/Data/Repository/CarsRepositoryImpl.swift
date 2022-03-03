import Foundation
import Domain

final class CarsRepositoryImpl: CarsRepository {

    private let apiManager: ApiManager
    
    init(apiManager: ApiManager) {
        self.apiManager = apiManager
    }
    
    func getCars(completion: @escaping (Result<[ListMovies], Swift.Error>) -> Void) {
        apiManager.getCars(completion: { result in
            switch result {
            case .success(let response):
                let map = ListMapper.map(inputs: response.data)
                completion(.success(map))
                
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    func getCardBy(id: String, completion: @escaping (Result<Movie, Swift.Error>) -> Void) {
        apiManager.getCardBy(id: id, completion: { result in
            switch result {
            case .success(let response):
                let map = MovieMapper.map(input: response.data)
                completion(.success(map))
                
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}
