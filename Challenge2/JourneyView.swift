//
//  ContentView.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 06/05/25.
//


import SwiftUI

struct RouteProgressView: View {
    
    var route: RouteModel
    let startIndex: Int
    let endIndex: Int
    
    //    @StateObject private var viewModel = RouteTrackerViewModel(route: route, startIndex: startIndex, endIndex: endIndex)
    //
    //    var body: some View {
    //        //        VStack(spacing: 20) {
    //        //            Text("Route Progress")
    //        //                .font(.title)
    //        //
    //        //            ProgressView(value: Double(viewModel.currentBusStopIndex), total: Double(viewModel.totalBusStops))
    //        //                .progressViewStyle(LinearProgressViewStyle())
    //        //                .padding()
    //
    //        NavigationStack {
    //            VStack(alignment: .leading, spacing: 5) {
    //                Text("Live Journey Update")
    //                    .font(.callout)
    //
    //                HStack (spacing: 5){
    //                    var startingStop: String = "Start"
    //                    var destinationStop: String = "Stop"
    //
    //                    Text(startingStop)
    //                        .font(.headline)
    //                        .italic(true)
    //
    //                    Image(systemName: "arrow.forward")
    //
    //                    Text(destinationStop)
    //                        .font(.headline)
    //                        .italic(true)
    //
    //                }
    //
    ////                Spacer()
    //
    //                HStack (alignment: .top){
    //                    Text("Next Stop:")
    //                        .font(.headline)
    //
    //                    ZStack {
    //                        Rectangle()
    //                            .fill(Color.orange)
    //                            .frame(width: 250, height: 60)
    //                            .cornerRadius(5)
    //
    //                        VStack {
    //
    //                            Text("Next Stop")
    //                                .font(.title2)
    //                                .bold(true)
    //                                .foregroundStyle(Color.white)
    //
    //
    //
    //                            Text("X Stops Remaining to Destination")
    //                                .font(.caption)
    //                                .italic(true)
    //                                .foregroundStyle(Color.white)
    //                        }
    //                    }
    //                }.padding(.vertical, 10)
    //
    //                Divider()
    //
    //                ScrollView {
    //                    HStack(alignment: .top){
    //                        VStack (alignment: .leading, spacing: 0){
    //                            ForEach(0..<viewModel.totalBusStops, id: \.self) { index in
    //                                HStack (alignment: .center){
    //                                    VStack (spacing: 0){
    //                                        Circle()
    //                                            .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
    //                                            .overlay(
    //                                                Group {
    //                                                    if index < viewModel.currentBusStopIndex {
    //                                                        Image(systemName: "checkmark")
    //                                                            .foregroundColor(.white)
    //                                                    }
    //                                                }
    //                                            )
    //                                            .frame(width: 20, height: 20)
    //                                        Rectangle()
    //                                            .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
    //                                            .frame(width: 3, height: 80)
    //                                    }
    //
    //                                    ImageStack(images: [viewModel.getImage(index: index)])
    //
    //                                    Text(viewModel.getLocationName(index: index))
    //                                    Spacer()
    //                                }
    //                            }
    //                        }
    //                    }
    //
    //                }.padding(.vertical, 10)
    //            }.padding(.all, 20)
    //
    //        }
    //    }
    //
    //}
    
    @StateObject private var viewModel: RouteTrackerViewModel
    
    init(route: RouteModel, startIndex: Int, endIndex: Int) {
        self.route = route
        self.startIndex = startIndex
        self.endIndex = endIndex
        self._viewModel = StateObject(wrappedValue: RouteTrackerViewModel(route: route, startIndex: startIndex, endIndex: endIndex))
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Live Journey Update")
                    .font(.callout)
                
                HStack(spacing: 5) {
                    let startingStop = viewModel.getLocationName(index: 0)
                    let destinationStop = viewModel.getLocationName(index: viewModel.totalBusStops - 1)
                    
                    Text(startingStop)
                        .font(.headline)
                        .italic()
                    
                    Image(systemName: "arrow.forward")
                    
                    Text(destinationStop)
                        .font(.headline)
                        .italic()
                }
                
                HStack(alignment: .top) {
                    Text("Next Stop:")
                        .font(.headline)
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 250, height: 60)
                            .cornerRadius(5)
                        
                        VStack {
                            Text(viewModel.currentBusStopIndex < viewModel.totalBusStops ? viewModel.getLocationName(index: viewModel.currentBusStopIndex) : "Arrived")
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.white)
                            
                            Text("\(max(0, viewModel.totalBusStops - viewModel.currentBusStopIndex)) Stops Remaining to Destination")
                                .font(.caption)
                                .italic()
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.vertical, 10)
                
                Divider()
                
                ScrollView {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 0) {
                            ForEach(0..<viewModel.totalBusStops, id: \.self) { index in
                                HStack(alignment: .center) {
                                    VStack(spacing: 0) {
                                        Circle()
                                            .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
                                            .overlay(
                                                Group {
                                                    if index < viewModel.currentBusStopIndex {
                                                        Image(systemName: "checkmark")
                                                            .foregroundColor(.white)
                                                            .sensoryFeedback(.selection, trigger: index < viewModel.currentBusStopIndex)
                                                    }
                                                }
                                            )
                                            .frame(width: 20, height: 20)
                                        if index < viewModel.totalBusStops - 1 {
                                            Rectangle()
                                                .fill(index < viewModel.currentBusStopIndex ? Color.orange : Color.gray)
                                                .frame(width: 3, height: 80)
                                        }
                                    }
                                    
                                    ImageStack(images: [viewModel.getImage(index: index)])
                                    
                                    Text(viewModel.getLocationName(index: index))
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .padding(.all, 20)
        }
    }
}

#Preview {
    RouteProgressView(route: route2a, startIndex: 2, endIndex: 8)
}
