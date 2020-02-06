//
// Example code for article: https://lostmoa.com/blog/DoubleColumnNavigationSplitViewInSwiftUI
//

import SwiftUI

struct ContentView: View {
    
    // List data example
    let requestUrls = ["https://httpbin.org/get", "https://httpbin.org/post", "https://httpbin.org/delete"]
    
    var body: some View {
        
        GeometryReader { geo in
            NavigationView {
                List(self.requestUrls, id: \.self) { url in
                    NavigationLink(destination: RequestDetailView(url: url)) {
                        Text(url)
                    }
                }
                .navigationBarTitle("Requests")
                
                Text("Nothing Selected.")
            }
            .padding(.leading, geo.size.height > geo.size.width ? 1 : 0)
        }

    }
}

// Detail view example
struct RequestDetailView: View {
    let url: String
    
    var body: some View {
        
        // UI example for the detail view
        Text("Detail view of request with url: \(url).")
    }
}
