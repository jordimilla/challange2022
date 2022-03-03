import Foundation

public struct BaseResponse<T: Codable>: Codable {
    let data: T
    
    public init(data: T) {
        self.data = data
    }
}

public struct BaseResponseArray<T: Codable>: Codable {
    let data: [T]
    
    public init(data: [T]) {
        self.data = data
    }
}
