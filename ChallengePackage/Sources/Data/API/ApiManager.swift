import Foundation
import Moya
import Domain

public protocol ApiManager {
    func getMovies(completion: @escaping (Result<BaseResponseArray<ListMoviesTO>, Error>) -> Void)
    func getMoviesBy(id: String, completion: @escaping (Result<BaseResponse<MovieTO>, Error>) -> Void)
}
