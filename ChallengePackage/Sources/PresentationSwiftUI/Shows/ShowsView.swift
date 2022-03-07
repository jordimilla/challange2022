import SwiftUI

struct ShowsView: View {
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var store: ShowsViewStore
    
    var onLoaded: () -> Void = {}
    var goToDetail: () -> Void = {}

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                onLoaded()
            }
    }
}

struct ShowsView_Previews: PreviewProvider {
    static var previews: some View {
        
        ShowsView(store: .init())
    }

}

