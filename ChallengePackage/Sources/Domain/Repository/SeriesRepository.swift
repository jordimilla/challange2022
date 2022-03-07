import Foundation

public protocol SeriesRepository {
    func getShows(page: Int, completion: @escaping (Result<[Show], Swift.Error>) -> Void)
    func getSeasons(id: Int, completion: @escaping (Result<[Season], Swift.Error>) -> Void)
    func getEpisodes(id: Int, completion: @escaping (Result<[Episode], Swift.Error>) -> Void)
}
