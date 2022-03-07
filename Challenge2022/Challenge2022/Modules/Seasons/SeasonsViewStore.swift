import Foundation
import Domain
import Combine
import SwiftUI

public final class SeasonsViewStore: ObservableObject {
    
    @Published var seasons: [Season] = []
    
    init() {
    
    }
        
}
