import Foundation
import Moya
import Domain
import Combine

public protocol ApiManager {
    func getShows(page: Int, completion: @escaping (Result<[SeasonTO], Error>) -> Void)
    func getSeasons(id: Int, completion: @escaping (Result<[SeasonTO], Error>) -> Void)
    func getEpisodes(id: Int, completion: @escaping (Result<[EpisodeTO], Error>) -> Void)
}
