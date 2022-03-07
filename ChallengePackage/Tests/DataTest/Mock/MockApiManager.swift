import Foundation

@testable import Data

final class MockApiManager: ApiManager {
    
    var getShows: ResultMethodStub<[ShowTO]> = ResultMethodStub()
    var getSeasons: ResultMethodStub<[SeasonTO]> = ResultMethodStub()
    var getEpisodes: ResultMethodStub<[EpisodeTO]> = ResultMethodStub()


    func getShows(page: Int, completion: @escaping (Result<[ShowTO], Error>) -> Void) {
        getShows.doCall(params: [page])
        completion(getShows.result)
    }
    
    func getSeasons(id: Int, completion: @escaping (Result<[SeasonTO], Error>) -> Void) {
        getSeasons.doCall(params: [id])
        completion(getSeasons.result)
    }
    
    func getEpisodes(id: Int, completion: @escaping (Result<[EpisodeTO], Error>) -> Void) {
        getEpisodes.doCall(params: [id])
        completion(getEpisodes.result)
    }

}
