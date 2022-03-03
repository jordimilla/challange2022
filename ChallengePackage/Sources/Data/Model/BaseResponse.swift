import Foundation

public struct BaseError: Error, Codable {
    
    let errors: [Error]
}

