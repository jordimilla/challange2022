import Foundation
import Domain

public final class DetailViewModel {
    
    private let getMovieUseCase: QueryCallableUseCase<Movie, GetMovieUseCaseParams>
    
    init(getMovieUseCase: QueryCallableUseCase<Movie, GetMovieUseCaseParams>) {
        self.getMovieUseCase = getMovieUseCase
    }
}
