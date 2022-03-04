import Foundation

public class GetListMoviesUseCase: QueryCallableUseCase<[ListMovies], NotUseCaseParams> {
    
    private let carsRepository: MoviesRepository
    
    public init(carsRepository: MoviesRepository) {
        self.carsRepository = carsRepository
    }
    
    public override func execute(params: NotUseCaseParams? = nil,
                                 completion: @escaping ResultCompletion<[ListMovies]>) {
        carsRepository.getMovies(completion: completion)
    }
}

