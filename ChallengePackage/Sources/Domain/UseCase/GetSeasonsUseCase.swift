import Foundation

public class GetSeasonsUseCaseParams: UseCaseParams {
    public let id: Int

    public init(id: Int) {
        self.id = id
    }
}

public class GetSeasonsUseCase: QueryCallableUseCase<[Season], GetSeasonsUseCaseParams> {
    
    private let seriesRepository: SeriesRepository
    
    public init(seriesRepository: SeriesRepository) {
        self.seriesRepository = seriesRepository
    }
    
    public override func execute(params: GetSeasonsUseCaseParams? = nil,
                                 completion: @escaping ResultCompletion<[Season]>) {
        guard let params = params else {
            completion(.failure(DomainError.notParams))
            return
        }
        
        seriesRepository.getSeasons(id: params.id, completion: completion)
    }
}

