//
//  ContentView.swift
//  JSONSwiftUI
//
//  Created by Phil Wright on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()

            .onAppear() {
                let service = WebService()

                service.getPosts { posts in
                    if let posts = posts {
                        print(posts)
                    }
                }

            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
