import Foundation
import Moya

protocol ApiManager {
    func getCars()
    func getCardBy(id: String)
}
