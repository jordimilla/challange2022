import Domain
import SwiftUI

public class ShowsAssembly {
    
    private let getShowsUseCase: QueryCallableUseCase<[Show], GetShowsUseCaseParams>

    public init(getShowsUseCase: QueryCallableUseCase<[Show], GetShowsUseCaseParams>) {
        self.getShowsUseCase = getShowsUseCase
    }
    
    public func build() -> some View {
        
        let store: ShowsViewStore = ShowsViewStore()
        var view: ShowsView = ShowsView(store: store)
        let params = GetShowsUseCaseParams(page: 1)
        view.onLoaded = {
            self.getShowsUseCase.execute(params: params, completion: { result in
                switch result {
                case .success(let response):
                    store.shows = response
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

