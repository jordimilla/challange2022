import Foundation
import Domain
import Data
import SwiftUI

public typealias FeatureProvider<T> = ((T) -> View?)

public class SeriesFeatureAssembly {
    
    public static var showsFeature: some View {
        ShowsAssembly(getShowsUseCase: UseCaseAssembly.makeGetShowsUseCase()).build()
    }
    
    public static var seasonsFeature: FeatureProvider<Int> = { id in
        SeasonsAssembly(getSeasonsUseCase: UseCaseAssembly.makeGetSeasonsUseCase(),
                        id: id)
            .build()
    }
    
    public static var episodesFeature: some View {
        EpisodesAssembly(getEpisodesUseCase: UseCaseAssembly.makeGetEpisodesUseCase()).build()
    }
}
