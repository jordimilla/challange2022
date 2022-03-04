import Foundation
import Domain

public class MoviesRepositoryImpl: MoviesRepository {

    private let apiManager: ApiManager
    
    public init(apiManager: ApiManager) {
        self.apiManager = apiManager
    }
    
    public func getMovies(completion: @escaping (Result<[ListMovies], Swift.Error>) -> Void) {
        apiManager.getMovies(completion: { result in
            switch result {
            case .success(let response):
                let map = ListMapper.map(inputs: response.data)
                completion(.success(map))
                
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    public func getMoviesBy(id: String, completion: @escaping (Result<Movie, Swift.Error>) -> Void) {
        apiManager.getMoviesBy(id: id, completion: { result in
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
