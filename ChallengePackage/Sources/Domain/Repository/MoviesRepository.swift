import Foundation

public protocol MoviesRepository {
    func getMovies(completion: @escaping (Result<[ListMovies], Swift.Error>) -> Void)
    func getMoviesBy(id: String, completion: @escaping (Result<Movie, Swift.Error>) -> Void)
}
