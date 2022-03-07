import Foundation
import Moya
import Combine

public class ApiManagerImpl: ApiManager {

    private let provider: MoyaProvider<ChallengeApi>
    
    init(provider: MoyaProvider<ChallengeApi>) {
        self.provider = provider
    }
}

extension ApiManagerImpl {
    
    public func getShows(page: Int, completion: @escaping (Result<[ShowTO], Error>) -> Void) {
        provider.requestFilterErrors(.getShows(page: page),
                                     completion: MoyaCompletionTransformer.mapJsonDecoder(completion))
    }
    
    public func getSeasons(id: Int, completion: @escaping (Result<[SeasonTO], Error>) -> Void) {
        provider.requestFilterErrors(.getSeasons(id: id),
                                     completion: MoyaCompletionTransformer.mapJsonDecoder(completion))
    }
    
    public func getEpisodes(id: Int, completion: @escaping (Result<[EpisodeTO], Error>) -> Void) {
        provider.requestFilterErrors(.getMovieBy(id: id),
                                     completion: MoyaCompletionTransformer.mapJsonDecoder(completion))
    }
    
//    public func getMoviesCombine() -> AnyPublisher<ListMoviesTO, Error> {
//        return provider.execute(.getMovies)
//    }
}

