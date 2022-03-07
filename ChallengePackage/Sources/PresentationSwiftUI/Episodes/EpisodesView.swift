import SwiftUI

struct EpisodesView: View {
    
    @ObservedObject var store: EpisodesViewStore
    
    var onLoaded: () -> Void = {}

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                onLoaded()
            }
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        
        EpisodesView(store: .init())
    }

}

