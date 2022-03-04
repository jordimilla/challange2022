import Foundation
import Moya

public class ApiManagerImpl: ApiManager {

    private let provider: MoyaProvider<ChallengeApi>
    
    init(provider: MoyaProvider<ChallengeApi>) {
        self.provider = provider
    }
}

extension ApiManagerImpl {
    
    public func getMovies(completion: @escaping (Result<BaseResponseArray<ListMoviesTO>, Error>) -> Void) {
        provider.requestFilterErrors(.getMovies,
                                     completion: MoyaCompletionTransformer.mapJsonDecoder(completion))
    }
    
    public func getMoviesBy(id: String, completion: @escaping (Result<BaseResponse<MovieTO>, Error>) -> Void) {
        provider.requestFilterErrors(.getMovieBy(id: id),
                                     completion: MoyaCompletionTransformer.mapJsonDecoder(completion))
    }
}

