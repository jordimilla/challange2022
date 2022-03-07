import Foundation
import Domain

public struct EpisodeMapper: Mapper {
    
    static public func mapImage(input: EpisodeImageTO) -> EpisodeImage {
        EpisodeImage(medium: input.medium, original: input.original)
    }
    
    static public func map(input: [EpisodeTO]) -> [Episode] {
        return input.map { countK -> Episode in
            Episode(id: countK.id, name: countK.name, summary: countK.summary, image: mapImage(input: countK.image))
        }
    }
}

public struct ShowMapper: Mapper {
    
    static public func mapImage(input: ShowImageTO) -> ShowImage {
        ShowImage(medium: input.medium, original: input.original)
    }
    
    static public func map(input: [ShowTO]) -> [Show] {
        return input.map { countK -> Show in
            Show(id: countK.id, name: countK.name, image: mapImage(input: countK.image))
        }
     
    }
}

public struct SeasonMapper: Mapper {
    
    static public func mapImage(input: SeasonImageTO) -> SeasonImage {
        SeasonImage(medium: input.medium, original: input.original)
    }
    
    static public func map(input: [SeasonTO]) -> [Season] {
        return input.map { countK -> Season in
            Season(id: countK.id, image: mapImage(input: countK.image ?? SeasonImageTO(medium: "", original: "")))
        }
     
    }
}

