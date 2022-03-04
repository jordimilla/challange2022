import Domain
import SwiftUI

public class ListAssembly {
    
    private let getListMoviesUseCase: QueryCallableUseCase<[ListMovies], NotUseCaseParams>

    public init(getListMoviesUseCase: QueryCallableUseCase<[ListMovies], NotUseCaseParams>) {
        self.getListMoviesUseCase = getListMoviesUseCase
    }
    
    public func build() -> some View {
        
        let store: ListMoviesViewStore = ListMoviesViewStore()
        var view: ListMoviesView = ListMoviesView(store: store)
        
        view.onLoaded = {
            self.getListMoviesUseCase.execute(completion: { result in
                switch result {
                case .success(let response):
                    store.movies = response
                case .failure(let error):
                    print(error)
                }
            })
        }
        
        view.goToDetail = {
           
        }
        
        return view
    }

}

