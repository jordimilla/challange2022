import SwiftUI
import Domain

struct SeasonsView: View {
    
    @ObservedObject var store: SeasonsViewStore
    
    var onLoaded: () -> Void = {}
    var goToDetail: () -> Void = {}

    var body: some View {
        List(store.seasons.indices, id: \.self) { i in
            let season: Season = store.seasons[i]
            NavigationLink(destination: SeriesFeatureAssembly.episodesFeature) {
                HStack {
                    Text("Season \(i + 1)")
                }
            }
            .navigationTitle("Seassons")
        }.onAppear {
            onLoaded()
        }.background(.black)
        .navigationViewStyle(.stack)
    }
}

struct SeasonsView_Previews: PreviewProvider {
    static var previews: some View {
        
        SeasonsView(store: .init())
    }

}

