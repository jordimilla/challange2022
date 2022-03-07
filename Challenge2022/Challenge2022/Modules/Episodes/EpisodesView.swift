import SwiftUI
import Domain

struct EpisodesView: View {
    
    @ObservedObject var store: EpisodesViewStore
    
    var onLoaded: () -> Void = {}

    var body: some View {
        List(store.episodes.indices, id: \.self) { i in
            let episode: Episode = store.episodes[i]
            VStack {
                AsyncImage(url: URL(string: episode.image.medium))
                    .scaledToFill()
                VStack(alignment: .center, spacing: 20) {
                    Text(episode.name)
                        .font(.title3)
                        .bold()
                    Text(episode.summary.htmlStripped)
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
            .navigationTitle("Episodes")
        }.onAppear {
            onLoaded()
        }
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        
        EpisodesView(store: .init())
    }

}
