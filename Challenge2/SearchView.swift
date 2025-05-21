//
//  SearchView.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 15/05/25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(routes) { route in
                        NavigationLink(destination: ChooseStopsView(route: route)) {
                            RouteTile(routeName: route.name, stops: route.busStops.count)
                        }
                    }
                }
            }
            .navigationTitle("Routes")
        }
    }
}


#Preview {
    SearchView()
}

