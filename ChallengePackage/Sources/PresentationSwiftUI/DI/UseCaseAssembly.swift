import Foundation
import Domain

public  class UseCaseAssembly {}

extension UseCaseAssembly {
    
    public static func makeGetShowsUseCase() -> QueryCallableUseCase<[Season], GetShowsUseCaseParams> {
        GetShowsUseCase(seriesRepository: RepositoryAssembly.makeSeriesRepository())
    }
    
    public static func makeGetSeasonsUseCase() -> QueryCallableUseCase<[Season], GetSeasonsUseCaseParams> {
        GetSeasonsUseCase(seriesRepository: RepositoryAssembly.makeSeriesRepository())
    }
    
    public static func makeGetEpisodesUseCase() -> QueryCallableUseCase<[Episode], GetEpisodeUseCaseParams> {
        GetEpisodeUseCase(seriesRepository: RepositoryAssembly.makeSeriesRepository())
    }
}

