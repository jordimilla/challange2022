import Foundation
import Domain
import Combine
import SwiftUI

public final class ListMoviesViewStore: ObservableObject {
    
    @Published var movies: [ListMovies] = []
    
    init() {
    
    }
        
}
