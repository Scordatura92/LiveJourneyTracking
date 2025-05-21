//
//  RouteModel.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 15/05/25.
//

import Foundation
import CoreLocation

struct RouteModel: Identifiable {
    let id = UUID()
    let name: String
//    let startPoint: String
//    let endPoint: String
    let number: String
    let busStops: [BusStop]
}
