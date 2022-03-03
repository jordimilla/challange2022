import Foundation

open class QueryCallableUseCase<T, P: UseCaseParams>: UseCase<P> {
    
    public override init() {}
    
    open func execute(params: P? = nil,
                      completion: @escaping (Result<T, Swift.Error>) -> Void) {
        preconditionFailure("This method must be overridden")
    }
}
