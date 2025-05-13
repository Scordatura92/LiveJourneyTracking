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
        VStack(spacing: 20) {
            Text("Route Progress")
                .font(.title)
            
            ProgressView(value: Double(viewModel.currentBusStopIndex), total: Double(viewModel.totalBusStops))
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            HStack {
                VStack (spacing: 0){
                    ForEach(0..<viewModel.totalBusStops, id: \.self) { index in
                        HStack {
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
                                    .frame(width: 3, height: 40)
                            }
                            
                            Text(viewModel.getLocationName(index: index))
                            
                            Spacer()
                        }
                        
                        
                    }
                }
                Spacer()
                
            }
            
        }
        .padding()
    }
}

#Preview {
    RouteProgressView()
}
