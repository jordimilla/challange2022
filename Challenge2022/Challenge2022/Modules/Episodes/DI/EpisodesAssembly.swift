import Domain
import SwiftUI

public class EpisodesAssembly {
    
    private let getEpisodesUseCase: QueryCallableUseCase<[Episode], GetEpisodeUseCaseParams>
    private let id: Int

    public init(getEpisodesUseCase: QueryCallableUseCase<[Episode], GetEpisodeUseCaseParams>,
                id: Int) {
        self.getEpisodesUseCase = getEpisodesUseCase
        self.id = id
    }
    
    public func build() -> some View {
        
        let store: EpisodesViewStore = EpisodesViewStore()
        var view: EpisodesView = EpisodesView(store: store)
        let params = GetEpisodeUseCaseParams(id: id)
        view.onLoaded = {
            self.getEpisodesUseCase.execute(params: params, completion: { result in
                switch result {
                case .success(let response):
                    store.episodes = response
                case .failure(let error):
                    print(error)
                }
            })
        }
        
        return view
    }

}

