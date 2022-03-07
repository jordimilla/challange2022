import Foundation
import Domain
import Combine
import SwiftUI

public final class ShowsViewStore: ObservableObject {
    
    @Published var shows: [Show] = []
    
    init() {
    
    }
        
}
