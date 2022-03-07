import Foundation

public class GetShowsUseCaseParams: UseCaseParams {
    public let page: Int

    public init(page: Int) {
        self.page = page
    }
}

public class GetShowsUseCase: QueryCallableUseCase<[Show], GetShowsUseCaseParams> {
    
    private let seriesRepository: SeriesRepository
    
    public init(seriesRepository: SeriesRepository) {
        self.seriesRepository = seriesRepository
    }
    
    public override func execute(params: GetShowsUseCaseParams? = nil,
                                 completion: @escaping ResultCompletion<[Show]>) {
        guard let params = params else {
            completion(.failure(DomainError.notParams))
            return
        }
        
        seriesRepository.getShows(page: params.page, completion: completion)
    }
}

