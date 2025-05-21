//
//  DetailRouteView.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 17/05/25.
//

import Foundation
import SwiftUI
import MapKit
//
//struct routeSheet: View {
//    @Environment(\.dismiss) var dismiss
//    var route: RouteModel
//    
//    //    let startIndex: Int
//    //    let endIndex: Int
//    
//    var body: some View {
//        
//        VStack {
//            HStack {
//                Text(route.name)
//                    .font(.title)
//                    .fontWeight(.bold)
//
//                
//                Spacer()
//                
//                Button {
//                    self.dismiss()
//                } label: {
//                    Image(systemName: "xmark.circle.fill")
//                        .foregroundStyle(.gray)
//                }.controlSize(.extraLarge)
//                    .padding(.all)
//                
//            }
//            Button {
//                
//            } label: {
//                Text("Start Journey")
//                    .foregroundStyle(.white)
//                    .font(.title3)
//                    .bold(true)
//            }
//            .frame(maxWidth: .infinity, alignment: .center)
//            .padding(12)
//            .background(
//                RoundedRectangle(cornerRadius: 10, style: .continuous)
//                    .fill(.orange)
//            )
//
//            Divider()
//        
//            
//            ScrollView {
//                VStack (alignment: .leading){
//                    BusTypeCard(busList: [Bus.all[1]])
//                    
//                    Divider()
//                    
//                    Text("Bus Stops")
//                        .font(.title2)
//                        .bold(true)
//                    
//                    HStack {
//                        Text("Schedule Type: ")
//                        Circle()
//                            .frame(width: 8, height: 8)
//                            .foregroundColor(.gray)
//                        Text("Weekday")
//                        Circle()
//                            .frame(width: 8, height: 8)
//                            .foregroundColor(.orange)
//                        Text("Weekend")
//                        
//                    }
//                    
//                }
//                
//            }
//            Spacer()
//        }
//        .padding(.all)
//        
//        //        Button("Dismiss") {
//        //            self.dismiss()
//        //        }
//    }
//}
//
//
//
//struct DetailRouteView: View {
//    @State private var showSheet: Bool = false
//    let startIndex: Int
//    let endIndex: Int
//    let route: RouteModel
//    
//    var cameraPosition: MapCameraPosition = .region(.init(center: .init(latitude: -6.305968, longitude: 106.672272), latitudinalMeters: 13000, longitudinalMeters: 13000))
//    
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                Map(initialPosition: cameraPosition)
//                
//                //            Button("Show Sheet Again") {
//                //                showSheet = true
//                //            }
//                    .onAppear {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                            showSheet = true
//                        }
//                    }
//                    .sheet(isPresented: $showSheet) {
//                        routeSheet(route: route)
//                            .presentationDetents([.medium, .large])
//                            .interactiveDismissDisabled()
//                            .presentationBackgroundInteraction(.enabled)
//                            .onDisappear {
//                                showSheet = false
//                            }
//                    }
//                
//            }
//            
//        }
//    }
//    
//}

struct routeSheet: View {
    @Environment(\.dismiss) var dismiss
    var route: RouteModel
    let startIndex: Int
    let endIndex: Int
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text(route.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        self.dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.gray)
                    }
                    .controlSize(.extraLarge)
                    .padding(.all)
                }
                
                NavigationLink {
                    RouteProgressView(route: route, startIndex: startIndex, endIndex: endIndex)
                    
                } label: {
                    Text("Start Journey")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .bold(true)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.orange)
                        )
                }
                
                Divider()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        BusTypeCard(busList: [Bus.all[1]])
                        
                        Divider()
                        
                        Text("Bus Stops")
                            .font(.title2)
                            .bold(true)
                        
                        HStack {
                            Text("Schedule Type: ")
                            Circle()
                                .frame(width: 8, height: 8)
                                .foregroundColor(.gray)
                            Text("Weekday")
                            Circle()
                                .frame(width: 8, height: 8)
                                .foregroundColor(.orange)
                            Text("Weekend")
                        }
                    }
                }
                Spacer()
            }
            .padding(.all)
        }
    }
}

struct DetailRouteView: View {
    @State private var showSheet: Bool = false
    let startIndex: Int
    let endIndex: Int
    let route: RouteModel
    
    var cameraPosition: MapCameraPosition = .region(.init(center: .init(latitude: -6.305968, longitude: 106.672272), latitudinalMeters: 13000, longitudinalMeters: 13000))
    
    var body: some View {
        NavigationStack {
            ZStack {
                Map(initialPosition: cameraPosition)
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        showSheet = true
                    }
                }
                .sheet(isPresented: $showSheet) {
                    routeSheet(route: route, startIndex: startIndex, endIndex: endIndex)
                        .presentationDetents([.medium, .large])
                        .interactiveDismissDisabled()
                        .presentationBackgroundInteraction(.enabled)
                        .onDisappear {
                            showSheet = false
                        }
                }
            }
        }
    }
}


#Preview {
    DetailRouteView(startIndex: 1, endIndex: 5, route: route2a)
}
