import Foundation
import Domain
import Combine
import SwiftUI

public final class EpisodesViewStore: ObservableObject {
    
    @Published var episodes: [Episode] = []
    
    init() {
    
    }
        
}
