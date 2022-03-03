import Foundation
import Moya
import Domain

protocol ApiManager {
    func getCars(completion: @escaping (Result<BaseResponseArray<ListMoviesTO>, Error>) -> Void)
    func getCardBy(id: String, completion: @escaping (Result<BaseResponse<MovieTO>, Error>) -> Void)
}
