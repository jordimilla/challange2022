import Foundation
import Domain

public struct MovieMapper: Mapper {
    static public func map(input: [EpisodeTO]) -> [Episode] {
        return input.map { countK -> Episode in
            Episode(title: countK.title, description: countK.description, image: countK.image)
        }
    }
}

public struct ListMapper: Mapper {
    
    static public func mapImage(input: SeasonImageTO) -> SeasonImage {
        SeasonImage(medium: input.medium, original: input.original)
    }
    
    static public func map(input: [SeasonTO]) -> [Season] {
        return input.map { countK -> Season in
            Season(id: countK.id, name: countK.name, image: mapImage(input: countK.image))
        }
     
    }
}
