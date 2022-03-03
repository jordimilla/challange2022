import Foundation

public protocol UseCaseParams {}
public struct NotUseCaseParams: UseCaseParams {}

open class UseCase<P: UseCaseParams> {
}
