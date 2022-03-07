import SwiftUI
import Domain

struct ShowsView: View {
    
    @ObservedObject var store: ShowsViewStore
    
    var onLoaded: () -> Void = {}
    var goToDetail: () -> Void = {}

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 20)], spacing: 20) {
                    ForEach(store.shows.indices, id: \.self) { i in
                        let show: Show = store.shows[i]
                        NavigationLink(destination: SeriesFeatureAssembly.seasonsFeature) {
                            VStack {
                                AsyncImage(url: URL(string: show.image.medium))
                                    .scaledToFill()
                                Text(show.name)
                            }
                        }
                    }
                }.onAppear {
                    onLoaded()
                }
            }
            .navigationTitle("Shows")
        }
        .navigationViewStyle(.stack)
    }
}

struct ShowsView_Previews: PreviewProvider {
    static var previews: some View {
        
        ShowsView(store: .init())
    }

}

