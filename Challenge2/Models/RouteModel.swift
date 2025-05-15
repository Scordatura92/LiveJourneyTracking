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

let route2a: RouteModel = .init(
    name: "Greenwich Park - Halte Sektor 1.3",
//    startPoint: "Greenwich Park",
//    endPoint: "Jl. Raya Mutiara No. 1",
    number: "2A",
    busStops: [
        .init(latitude: CLLocationCoordinate2D.greenwichParkOffice.latitude, longitude: CLLocationCoordinate2D.greenwichParkOffice.longitude, name: "Greenwich Park Office", image: "greenwichParkOffice"),
        .init(latitude: CLLocationCoordinate2D.jadeite.latitude, longitude: CLLocationCoordinate2D.jadeite.longitude, name: "Jadeite", image: "jadeite"),
        .init(latitude: CLLocationCoordinate2D.deMaja.latitude, longitude: CLLocationCoordinate2D.deMaja.longitude, name: "De Maja", image: "deMaja"),
        .init(latitude: CLLocationCoordinate2D.deHeliconia2.latitude, longitude: CLLocationCoordinate2D.deHeliconia2.longitude, name: "De Heliconia 2", image: "deHeliconia2"),
        .init(latitude: CLLocationCoordinate2D.deNara.latitude, longitude: CLLocationCoordinate2D.deNara.longitude, name: "De Nara", image: "deNara"),
        .init(latitude: CLLocationCoordinate2D.dePark2.latitude, longitude: CLLocationCoordinate2D.dePark2.longitude, name: "De Park 2", image: "dePark2"),
        .init(latitude: CLLocationCoordinate2D.navaPark2.latitude, longitude: CLLocationCoordinate2D.navaPark2.longitude, name: "Nava Park 2", image: "default"),
        .init(latitude: CLLocationCoordinate2D.giardina.latitude, longitude: CLLocationCoordinate2D.giardina.longitude, name: "Giardina", image: "giardina"),
        .init(latitude: CLLocationCoordinate2D.collinare.latitude, longitude: CLLocationCoordinate2D.collinare.longitude, name: "Collinare", image: "collinare"),
        .init(latitude: CLLocationCoordinate2D.foglio.latitude, longitude: CLLocationCoordinate2D.foglio.longitude, name: "Foglio", image: "foglio"),
        .init(latitude: CLLocationCoordinate2D.studento2.latitude, longitude: CLLocationCoordinate2D.studento2.longitude, name: "Studento 2", image: "studento2"),
        .init(latitude: CLLocationCoordinate2D.albera.latitude, longitude: CLLocationCoordinate2D.albera.longitude, name: "Albera", image: "albera"),
        .init(latitude: CLLocationCoordinate2D.foresta1.latitude, longitude: CLLocationCoordinate2D.foresta1.longitude, name: "Foresta 1", image: "foresta1"),
        .init(latitude: CLLocationCoordinate2D.gop1.latitude, longitude: CLLocationCoordinate2D.gop1.longitude, name: "GOP 1", image: "gop1"),
        .init(latitude: CLLocationCoordinate2D.smlPlaza.latitude, longitude: CLLocationCoordinate2D.smlPlaza.longitude, name: "SML Plaza", image: "smlPlaza"),
        .init(latitude: CLLocationCoordinate2D.theBreeze.latitude, longitude: CLLocationCoordinate2D.theBreeze.longitude, name: "The Breeze", image: "theBreeze"),
        .init(latitude: CLLocationCoordinate2D.cbdTimur1.latitude, longitude: CLLocationCoordinate2D.cbdTimur1.longitude, name: "CBD Timur 1", image: "cbdTimur1"),
        .init(latitude: CLLocationCoordinate2D.cbdTimurGop2.latitude, longitude: CLLocationCoordinate2D.cbdTimurGop2.longitude, name: "CBD Timur 2", image: "cbdTimur2"),
        .init(latitude: CLLocationCoordinate2D.navaPark1.latitude, longitude: CLLocationCoordinate2D.navaPark1.longitude, name: "Nava Park 1", image: "default"),
        .init(latitude: CLLocationCoordinate2D.swa2.latitude, longitude: CLLocationCoordinate2D.swa2.longitude, name: "SWA 2", image: "swa2"),
        .init(latitude: CLLocationCoordinate2D.giantBSDCity1.latitude, longitude: CLLocationCoordinate2D.giantBSDCity1.longitude, name: "Giant", image: "giant"),
        .init(latitude: CLLocationCoordinate2D.ekaHospital1.latitude, longitude: CLLocationCoordinate2D.ekaHospital1.longitude, name: "Eka Hospital 1", image: "ekaHospital1"),
        .init(latitude: CLLocationCoordinate2D.puspitaloka.latitude, longitude: CLLocationCoordinate2D.puspitaloka.longitude, name: "Puspita Loka 1", image: "default"),
        .init(latitude: CLLocationCoordinate2D.polsekSerpong.latitude, longitude: CLLocationCoordinate2D.polsekSerpong.longitude, name: "Polsek Serpong", image: "default"),
        .init(latitude: CLLocationCoordinate2D.rukoMadrid.latitude, longitude: CLLocationCoordinate2D.rukoMadrid.longitude, name: "Ruko Madrid", image: "default"),
        .init(latitude: CLLocationCoordinate2D.pasarModernTimur.latitude, longitude: CLLocationCoordinate2D.pasarModernTimur.longitude, name: "Pasar Modern Timur", image: "default"),
        .init(latitude: CLLocationCoordinate2D.griyaLoka1.latitude, longitude: CLLocationCoordinate2D.griyaLoka1.longitude, name: "Griya Loka 1", image: "griyaLoka1"),
        .init(latitude: CLLocationCoordinate2D.sektor13.latitude, longitude: CLLocationCoordinate2D.sektor13.longitude, name: "Sektor 1.3", image: "default"),
    ]
)
