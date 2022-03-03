import Foundation
import Domain

public struct MovieMapper: Mapper {
    static public func map(input: MovieTO) -> Movie {
        Movie(title: input.title, description: input.description, image: input.image)
    }
}

public struct ListMapper: Mapper {
    
    static public func map(input: ListMoviesTO) -> ListMovies {
        ListMovies(id: input.id, title: input.title, artwork: input.artwork, snapshot: input.snapshot)
    }
}
