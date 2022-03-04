import SwiftUI

struct ListMoviesView: View {
    
    @ObservedObject var store: ListMoviesViewStore
    
    var onLoaded: () -> Void = {}
    var goToDetail: () -> Void = {}

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                onLoaded()
            }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListMoviesView(store: .init())
    }

}

