import Foundation

public class GetListMoviesUseCase: QueryCallableUseCase<[ListMovies], NotUseCaseParams> {
    
    private let carsRepository: CarsRepository
    
    public init(carsRepository: CarsRepository) {
        self.carsRepository = carsRepository
    }
    
    public override func execute(params: NotUseCaseParams? = nil,
                                 completion: @escaping ResultCompletion<[ListMovies]>) {
        carsRepository.getCars(completion: completion)
    }
}

