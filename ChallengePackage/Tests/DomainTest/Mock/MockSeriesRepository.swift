@testable import Domain

final class MockSeriesRepository: SeriesRepository {
 
    var getShows: ResultMethodStub<[Show]> = ResultMethodStub()
    var getSeasons: ResultMethodStub<[Season]> = ResultMethodStub()
    var getEpisodes: ResultMethodStub<[Episode]> = ResultMethodStub()
    
    public init() {
    }

    func getShows(page: Int, completion: @escaping (Result<[Show], Swift.Error>) -> Void) {
        getShows.doCall()
        completion(getShows.result)
    }
    
    func getSeasons(id: Int, completion: @escaping (Result<[Season], Swift.Error>) -> Void) {
        getSeasons.doCall()
        completion(getSeasons.result)
    }
    
    func getEpisodes(id: Int, completion: @escaping (Result<[Episode], Swift.Error>) -> Void) {
        getEpisodes.doCall()
        completion(getEpisodes.result)
    }
}
