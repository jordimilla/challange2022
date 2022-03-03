import Foundation

public protocol CarsRepository {
    func getCars(completion: @escaping (Result<[ListMovies], Swift.Error>) -> Void)
    func getCardBy(id: String, completion: @escaping (Result<Movie, Swift.Error>) -> Void)
}
