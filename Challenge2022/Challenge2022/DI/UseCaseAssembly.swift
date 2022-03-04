import Foundation
import Domain

public  class UseCaseAssembly {}

extension UseCaseAssembly {
    
    public static func makeGetListMoviesUseCase() -> QueryCallableUseCase<[ListMovies], NotUseCaseParams> {
        GetListMoviesUseCase(carsRepository: RepositoryAssembly.makeCarsRepository())
    }
}

