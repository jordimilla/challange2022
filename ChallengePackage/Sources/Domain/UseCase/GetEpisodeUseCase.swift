import Foundation

public class GetEpisodeUseCaseParams: UseCaseParams {
    public let id: Int

    public init(id: Int) {
        self.id = id
    }
}

public class GetEpisodeUseCase: QueryCallableUseCase<[Episode], GetEpisodeUseCaseParams> {
    
    private let seriesRepository: SeriesRepository
    
    public init(seriesRepository: SeriesRepository) {
        self.seriesRepository = seriesRepository
    }
    
    public override func execute(params: GetEpisodeUseCaseParams? = nil,
                                 completion: @escaping ResultCompletion<[Episode]>) {
        guard let params = params else {
            completion(.failure(DomainError.notParams))
            return
        }
        seriesRepository.getEpisodes(id: params.id, completion: completion)
    }
}
