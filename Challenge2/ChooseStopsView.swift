//
//  ChooseStopsView.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 17/05/25.
//

//import SwiftUI
//import CoreLocation
//
//struct ChooseStopsView: View {
//    let route: RouteModel
//
//    @State private var selectedStartIndex = 0
//    @State private var selectedEndIndex = 1
//    @State private var goToDetails = false
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("Choose Starting Point")) {
//                    Picker("Start", selection: $selectedStartIndex) {
//                        ForEach(0..<route.busStops.count, id: \.self) { index in
//                            Text(route.busStops[index].name)
//                        }
//                    }
//                }
//
//                Section(header: Text("Choose Destination Point")) {
//                    Picker("Destination", selection: $selectedEndIndex) {
//                        ForEach(0..<route.busStops.count, id: \.self) { index in
//                            Text(route.busStops[index].name)
//                        }
//                    }
//                }
//
//                Section {
//                    Button(action: {
//                        let start = route.busStops[selectedStartIndex]
//                        let end = route.busStops[selectedEndIndex]
//                        print("Selected Route: \(start.name) -> \(end.name)")
//                        // Proceed with your logic here
//                    }) {
//                        Text("Confirm Route")
//                            .frame(maxWidth: .infinity)
//                    }
//                    .disabled(selectedStartIndex == selectedEndIndex)
//                }
//            }
//            .navigationTitle("Select Route")
//        }
//    }
//}

import SwiftUI
import CoreLocation

struct ChooseStopsView: View {
    let route: RouteModel

    @State private var selectedStartIndex = 0
    @State private var selectedEndIndex = 1
    @State private var goToDetails = false

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Choose Starting Point")) {
                    Picker("Start", selection: $selectedStartIndex) {
                        ForEach(0..<route.busStops.count, id: \.self) { index in
                            Text(route.busStops[index].name)
                        }
                    }
                }

                Section(header: Text("Choose Destination Point")) {
                    Picker("Destination", selection: $selectedEndIndex) {
                        ForEach(0..<route.busStops.count, id: \.self) { index in
                            Text(route.busStops[index].name)
                        }
                    }
                }

                Section {
                    NavigationLink(
                        destination: DetailRouteView(
                            startIndex: selectedStartIndex,
                            endIndex: selectedEndIndex,
                            route: route
                        ),
                        isActive: $goToDetails
                    ) {
                        Button(action: {
                            goToDetails = true
                        }) {
                            Text("Confirm Journey")
                                .frame(maxWidth: .infinity)
                        }
                        .disabled(selectedStartIndex == selectedEndIndex)
                    }
                }
            }
            .navigationTitle("Select Journey")
        }
    }
}


#Preview {
    ChooseStopsView(route: route2a)
}
