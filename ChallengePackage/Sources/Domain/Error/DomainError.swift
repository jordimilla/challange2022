import Foundation

public protocol DomainErrorContract: Swift.Error { }

public enum DomainError: DomainErrorContract {
    case notParams
    case unknown
}
