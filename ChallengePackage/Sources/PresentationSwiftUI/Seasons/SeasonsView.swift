import SwiftUI

struct SeasonsView: View {
    
    @ObservedObject var store: SeasonsViewStore
    
    var onLoaded: () -> Void = {}
    var goToDetail: () -> Void = {}

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                onLoaded()
            }
    }
}

struct SeasonsView_Previews: PreviewProvider {
    static var previews: some View {
        
        SeasonsView(store: .init())
    }

}

