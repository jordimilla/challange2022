import Foundation
import Domain
import SwiftUI

public typealias FeatureProvider<T> = ((T) -> View)

public class SeriesFeatureAssembly {
    
    public static var showsFeature: some View {
        ShowsAssembly(getShowsUseCase: UseCaseAssembly.makeGetShowsUseCase()).build()
    }
    
    public static var seasonsFeature: some View {
        SeasonsAssembly(getSeasonsUseCase: UseCaseAssembly.makeGetSeasonsUseCase(),
                        id: 251)
            .build()
    }
    
    public static var episodesFeature: some View {
        EpisodesAssembly(getEpisodesUseCase: UseCaseAssembly.makeGetEpisodesUseCase(),
                         id: 993)
            .build()
    }
}
