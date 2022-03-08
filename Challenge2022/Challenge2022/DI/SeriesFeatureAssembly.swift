import Foundation
import Domain
import SwiftUI

public typealias FeatureProvider<T> = ((T) -> AnyView)

public class SeriesFeatureAssembly {
    
    public static var showsFeature: AnyView {
        ShowsAssembly(getShowsUseCase: UseCaseAssembly.makeGetShowsUseCase()).build().wrapAnyView()
    }
    
    public static var seasonsFeature: FeatureProvider<Int> = { id in
        SeasonsAssembly(getSeasonsUseCase: UseCaseAssembly.makeGetSeasonsUseCase(),
                        id: id)
            .build().wrapAnyView()
    }
    
    public static var episodesFeature: FeatureProvider<Int> = { id in
        EpisodesAssembly(getEpisodesUseCase: UseCaseAssembly.makeGetEpisodesUseCase(),
                         id: id)
            .build().wrapAnyView()
    }
}

extension View {
    func wrapAnyView() -> AnyView {
        AnyView(self)
    }
}
