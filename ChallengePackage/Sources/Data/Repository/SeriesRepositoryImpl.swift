import Foundation
import Domain

public class SeriesRepositoryImpl: SeriesRepository {

    private let apiManager: ApiManager
    
    public init(apiManager: ApiManager) {
        self.apiManager = apiManager
    }
    
    public func getShows(page: Int, completion: @escaping (Result<[Show], Swift.Error>) -> Void) {
        apiManager.getShows(page: page, completion: { result in
            switch result {
            case .success(let response):
                let map = ShowMapper.map(input: response)
                completion(.success(map))
                
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    public func getSeasons(id: Int, completion: @escaping (Result<[Season], Swift.Error>) -> Void) {
        apiManager.getSeasons(id: id, completion: { result in
            switch result {
            case .success(let response):
                let map = SeasonMapper.map(input: response)
                completion(.success(map))
                
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    public func getEpisodes(id: Int, completion: @escaping (Result<[Episode], Swift.Error>) -> Void) {
        apiManager.getEpisodes(id: id, completion: { result in
            switch result {
            case .success(let response):
                let map = EpisodeMapper.map(input: response)
                completion(.success(map))
                
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}
