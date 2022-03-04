import Foundation

public class GetMovieUseCaseParams: UseCaseParams {
    public let id: String

    public init(id: String) {
        self.id = id
    }
}

public class GetMovieUseCase: QueryCallableUseCase<Movie, GetMovieUseCaseParams> {
    
    private let carsRepository: MoviesRepository
    
    public init(carsRepository: MoviesRepository) {
        self.carsRepository = carsRepository
    }
    
    public override func execute(params: GetMovieUseCaseParams? = nil,
                                 completion: @escaping ResultCompletion<Movie>) {
        guard let params = params else {
            completion(.failure(DomainError.notParams))
            return
        }
        carsRepository.getMoviesBy(id: params.id, completion: completion)
    }
}
