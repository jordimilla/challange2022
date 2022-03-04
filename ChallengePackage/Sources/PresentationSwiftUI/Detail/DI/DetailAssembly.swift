import Domain

public class DetailAssembly {
    
    private let getMovieUseCase: QueryCallableUseCase<Movie, GetMovieUseCaseParams>

    public init(getMovieUseCase: QueryCallableUseCase<Movie, GetMovieUseCaseParams>) {
        self.getMovieUseCase = getMovieUseCase
    }

}

extension DetailAssembly {
    func makeListView() -> DetailView {
        DetailView()
    }
    
    func makeListViewModel() -> DetailViewModel {
        DetailViewModel(getMovieUseCase: getMovieUseCase)
    }
}
