import Foundation
import Domain
import Data
import SwiftUI
import PresentationSwiftUI

public class MoviesFeatureAssembly {
    public static var listMoviesFeature: some View {
        ListAssembly(getListMoviesUseCase: UseCaseAssembly.makeGetListMoviesUseCase()).build()
    }
}
