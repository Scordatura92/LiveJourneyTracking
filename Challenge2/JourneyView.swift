//
//  ContentView.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 06/05/25.
//


import SwiftUI

struct RouteProgressView: View {
    @StateObject private var viewModel = RouteTrackerViewModel()
    
    var body: some View {
        //        VStack(spacing: 20) {
        //            Text("Route Progress")
        //                .font(.title)
        //
        //            ProgressView(value: Double(viewModel.currentBusStopIndex), total: Double(viewModel.totalBusStops))
        //                .progressViewStyle(LinearProgressViewStyle())
        //                .padding()
        
        NavigationStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Live Journey Update")
                    .font(.callout)
                
                HStack (spacing: 5){
                    var startingStop: String = "Start"
                    var destinationStop: String = "Stop"
                    
                    Text(startingStop)
                        .font(.headline)
                        .italic(true)
                    
                    Image(systemName: "arrow.forward")
                    
                    Text(destinationStop)
                        .font(.headline)
                        .italic(true)
                    
                }
                
//                Spacer()
                
                HStack (alignment: .top){
                    Text("Next Stop:")
                        .font(.headline)
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 250, height: 60)
                            .cornerRadius(5)
                        
                        VStack {
                            
                            Text("Next Stop")
                                .font(.title2)
                                .bold(true)
                                .foregroundStyle(Color.white)
                            
                            
                            
                            Text("X Stops Remaining to Destination")
                                .font(.caption)
                                .italic(true)
                                .foregroundStyle(Color.white)
                        }
                    }
                }.padding(.vertical, 10)
                
                Divider()
                
                ScrollView {
                    HStack(alignment: .top){
                        VStack (alignment: .leading, spacing: 0){
                            ForEach(0..<viewModel.totalBusStops, id: \.self) { index in
                                HStack (alignment: .center){
                                    VStack (spacing: 0){
                                        Circle()
                                            .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
                                            .overlay(
                                                Group {
                                                    if index < viewModel.currentBusStopIndex {
                                                        Image(systemName: "checkmark")
                                                            .foregroundColor(.white)
                                                    }
                                                }
                                            )
                                            .frame(width: 20, height: 20)
                                        Rectangle()
                                            .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
                                            .frame(width: 3, height: 80)
                                    }
                                    
                                    ImageStack(images: [viewModel.getImage(index: index)])
                                    
                                    Text(viewModel.getLocationName(index: index))
                                    Spacer()
                                }
                            }
                        }
                    }
                    
                }.padding(.vertical, 10)
            }.padding(.all, 20)
            
        }
    }
    
}

//import SwiftUI
//
//struct RouteProgressView: View {
//    @StateObject private var viewModel = RouteTrackerViewModel()
//
//    var body: some View {
//        ScrollView {
//            VStack(alignment: .leading, spacing: 0) {
//                ForEach(0..<viewModel.totalBusStops, id: \.self) { index in
//                    HStack(alignment: .center, spacing: 16) {
//                        // Timeline Node + Connector
//                        VStack (){
//                            // Node (Circle)
//                            Circle()
//                                .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
//                                .frame(width: 20, height: 20)
//
//                            // Connecting Line (only if not last)
//                            if index != viewModel.totalBusStops - 1 {
//                                Rectangle()
//                                    .fill((index + 1) < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
//                                    .frame(width: 3, height: 80)
//                            }
//                        }
//
//                        // Image
//                        ImageStack(images: [viewModel.getImage(index: index)])
//
//                        // Stop Name
//                        Text(viewModel.getLocationName(index: index))
//                    }
//                }
//            }
//            .padding()
//        }
//    }
//}



#Preview {
    RouteProgressView()
}
