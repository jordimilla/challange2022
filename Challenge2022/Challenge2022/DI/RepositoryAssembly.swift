import Foundation
import Data
import Domain

final class RepositoryAssembly {
    
    static func makeSeriesRepository() -> SeriesRepository {
        return SeriesRepositoryImpl(apiManager: ApiAssembly.makeApiManager(url: "https://api.tvmaze.com/"))
    }
}
