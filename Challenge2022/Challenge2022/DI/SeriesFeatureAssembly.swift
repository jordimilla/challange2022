import Foundation
import Domain
import Data
import SwiftUI
import PresentationSwiftUI

public class SeriesFeatureAssembly {
    
    public static var showsFeature: some View {
        ShowsAssembly(getShowsUseCase: UseCaseAssembly.makeGetShowsUseCase()).build()
    }
    
    public static var seasonsFeature: some View {
        SeasonsAssembly(getSeasonsUseCase: UseCaseAssembly.makeGetSeasonsUseCase()).build()
    }
    
    public static var episodesFeature: some View {
        EpisodesAssembly(getEpisodesUseCase: UseCaseAssembly.makeGetEpisodesUseCase()).build()
    }
}
