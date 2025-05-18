//
//  RouteTile.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 17/05/25.
//

import SwiftUI

struct RouteTile: View {
    
    var routeName: String
    var stops: Int

    
    var body: some View {
        HStack(){
            VStack(alignment: .leading, spacing: 5){
                Text(routeName)
                    .font(.title3)
                    .bold()
                Text(String(stops) + " Stops")
                    .font(.body)
                    .foregroundColor(.black.opacity(0.7))
            }
            Spacer()
        }
    }
}
