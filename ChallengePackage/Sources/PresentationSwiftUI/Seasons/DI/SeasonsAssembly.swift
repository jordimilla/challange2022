import Domain
import SwiftUI

public class SeasonsAssembly {
    
    private let getSeasonsUseCase: QueryCallableUseCase<[Season], GetSeasonsUseCaseParams>

    public init(getSeasonsUseCase: QueryCallableUseCase<[Season], GetSeasonsUseCaseParams>) {
        self.getSeasonsUseCase = getSeasonsUseCase
    }
    
    public func build() -> some View {
        
        let store: SeasonsViewStore = SeasonsViewStore()
        var view: SeasonsView = SeasonsView(store: store)
        let params = GetSeasonsUseCaseParams(id: 1)
        view.onLoaded = {
            self.getSeasonsUseCase.execute(params: params, completion: { result in
                switch result {
                case .success(let response):
                    store.seasons = response
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

