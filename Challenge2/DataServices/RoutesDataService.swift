//
//  RoutesDataService.swift
//  Challenge2
//
//  Created by Brayen Fredgin Cahyadi on 15/05/25.
//

import Foundation
import CoreLocation

let routes: [RouteModel] = [route2a, route3, route4]

let route4: RouteModel = .init(
    name: "Terminal Intermoda - De Park - Terminal Intermoda (Rute 2)",
    number: "4",
    busStops: [
        .init(latitude: CLLocationCoordinate2D.intermoda.latitude, longitude: CLLocationCoordinate2D.intermoda.longitude, name: "Intermoda", image: "intermoda"),
        .init(latitude: CLLocationCoordinate2D.iconCentro.latitude, longitude: CLLocationCoordinate2D.iconCentro.longitude, name: "Icon Centro", image: "iconCentro"),
        .init(latitude: CLLocationCoordinate2D.horizonBroadway.latitude, longitude: CLLocationCoordinate2D.horizonBroadway.longitude, name: "Horizon Broadway", image: "horizonBroadwy"),
        .init(latitude: CLLocationCoordinate2D.extremePark.latitude, longitude: CLLocationCoordinate2D.extremePark.longitude, name: "Extreme Park", image: "extremePark"),
        .init(latitude: CLLocationCoordinate2D.saveria.latitude, longitude: CLLocationCoordinate2D.saveria.longitude, name: "Saveria", image: "saveria"),
        .init(latitude: CLLocationCoordinate2D.casaDeParco1.latitude, longitude: CLLocationCoordinate2D.casaDeParco1.longitude, name: "Casa De Parco 1", image: "casaDeParco1"),
        .init(latitude: CLLocationCoordinate2D.smlPlaza.latitude, longitude: CLLocationCoordinate2D.smlPlaza.longitude, name: "SML Plaza", image: "smlPlaza"),
        .init(latitude: CLLocationCoordinate2D.theBreeze.latitude, longitude: CLLocationCoordinate2D.theBreeze.longitude, name: "The Breeze", image: "theBreeze"),
        .init(latitude: CLLocationCoordinate2D.cbdTimur1.latitude, longitude: CLLocationCoordinate2D.cbdTimur1.longitude, name: "CBD Timur 1", image: "cbdTimur1"),
        .init(latitude: CLLocationCoordinate2D.aeonMall1.latitude, longitude: CLLocationCoordinate2D.aeonMall1.longitude, name: "Aeon Mall 1", image: "aeonMall1"),
        .init(latitude: CLLocationCoordinate2D.aeonMall2.latitude, longitude: CLLocationCoordinate2D.aeonMall2.longitude, name: "Aeon Mall 2", image: "aeonMall2"),
        .init(latitude: CLLocationCoordinate2D.cbdTimurGop2.latitude, longitude: CLLocationCoordinate2D.cbdTimurGop2.longitude, name: "CBD Timur 2", image: "cbdTimur2"),
        .init(latitude: CLLocationCoordinate2D.simpangForesta.latitude, longitude: CLLocationCoordinate2D.simpangForesta.longitude, name: "Simpang Foresta", image: "simpangForesta"),
        .init(latitude: CLLocationCoordinate2D.allevare.latitude, longitude: CLLocationCoordinate2D.allevare.longitude, name: "Allevare", image: "allevare"),
        .init(latitude: CLLocationCoordinate2D.fiore.latitude, longitude: CLLocationCoordinate2D.fiore.longitude, name: "Fiore", image: "fiore"),
        .init(latitude: CLLocationCoordinate2D.studento1.latitude, longitude: CLLocationCoordinate2D.studento1.longitude, name: "Studento 1", image: "studento1"),
        .init(latitude: CLLocationCoordinate2D.naturale.latitude, longitude: CLLocationCoordinate2D.naturale.longitude, name: "Naturale", image: "naturale"),
        .init(latitude: CLLocationCoordinate2D.fresco.latitude, longitude: CLLocationCoordinate2D.fresco.longitude, name: "Fresco", image: "fresco"),
        .init(latitude: CLLocationCoordinate2D.primavera.latitude, longitude: CLLocationCoordinate2D.primavera.longitude, name: "Primavera", image: "default"),
        .init(latitude: CLLocationCoordinate2D.foresta2.latitude, longitude: CLLocationCoordinate2D.foresta2.longitude, name: "Foresta 2", image: "foresta2"),
        .init(latitude: CLLocationCoordinate2D.dePark1.latitude, longitude: CLLocationCoordinate2D.dePark1.longitude, name: "De Park 1", image: "dePark1"),
        .init(latitude: CLLocationCoordinate2D.deFrangpani.latitude, longitude: CLLocationCoordinate2D.deFrangpani.longitude, name: "De Frangipani", image: "deFrangipani"),
        .init(latitude: CLLocationCoordinate2D.deHeliconia1.latitude, longitude: CLLocationCoordinate2D.deHeliconia1.longitude, name: "De Heliconia 1", image: "deHeliconia1"),
        .init(latitude: CLLocationCoordinate2D.deBrassia.latitude, longitude: CLLocationCoordinate2D.deBrassia.longitude, name: "De Brassia", image: "deBrassia"),
        .init(latitude: CLLocationCoordinate2D.jadeite.latitude, longitude: CLLocationCoordinate2D.jadeite.longitude, name: "Jadeite", image: "jadeite"),
        .init(latitude: CLLocationCoordinate2D.greenwichPark2.latitude, longitude: CLLocationCoordinate2D.greenwichPark2.longitude, name: "Greenwich Park 2", image: "greenwichPark2"),
        .init(latitude: CLLocationCoordinate2D.qBig2.latitude, longitude: CLLocationCoordinate2D.qBig2.longitude, name: "QBig 2", image: "default"),
        .init(latitude: CLLocationCoordinate2D.qBig3.latitude, longitude: CLLocationCoordinate2D.qBig3.longitude, name: "QBig 3", image: "default"),
        .init(latitude: CLLocationCoordinate2D.bca.latitude, longitude: CLLocationCoordinate2D.bca.longitude, name: "BCA", image: "bca"),
        .init(latitude: CLLocationCoordinate2D.fbl2.latitude, longitude: CLLocationCoordinate2D.fbl2.longitude, name: "FBL 2", image: "fbl2"),
        .init(latitude: CLLocationCoordinate2D.fbl1.latitude, longitude: CLLocationCoordinate2D.fbl1.longitude, name: "FBL 1", image: "fbl1"),
        .init(latitude: CLLocationCoordinate2D.ice1.latitude, longitude: CLLocationCoordinate2D.ice1.longitude, name: "ICE 1", image: "ice1"),
        .init(latitude: CLLocationCoordinate2D.ice2.latitude, longitude: CLLocationCoordinate2D.ice2.longitude, name: "ICE 2", image: "ice2"),
        .init(latitude: CLLocationCoordinate2D.ice6.latitude, longitude: CLLocationCoordinate2D.ice6.longitude, name: "ICE 6", image: "ice6"),
        .init(latitude: CLLocationCoordinate2D.ice5.latitude, longitude: CLLocationCoordinate2D.ice5.longitude, name: "ICE 5", image: "ice5"),
        .init(latitude: CLLocationCoordinate2D.cbdBarat1.latitude, longitude: CLLocationCoordinate2D.cbdBarat1.longitude, name: "CBD Barat 1", image: "cbdBarat1"),
        .init(latitude: CLLocationCoordinate2D.cbdBarat2.latitude, longitude: CLLocationCoordinate2D.cbdBarat2.longitude, name: "CBD Barat 2", image: "cbdBarat2"),
        .init(latitude: CLLocationCoordinate2D.simplicity1.latitude, longitude: CLLocationCoordinate2D.simplicity1.longitude, name: "Simplicity 1", image: "simplicity1"),
        .init(latitude: CLLocationCoordinate2D.intermoda.latitude, longitude: CLLocationCoordinate2D.intermoda.longitude, name: "Intermoda", image: "intermoda")
    ]
)

let route3: RouteModel = .init(
    name: "Terminal Intermoda - De Park - Terminal Intermoda (Rute 1)",
    number: "3",
    busStops: [
        .init(latitude: CLLocationCoordinate2D.intermoda.latitude, longitude: CLLocationCoordinate2D.intermoda.longitude, name: "Intermoda", image: "intermoda"),
        .init(latitude: CLLocationCoordinate2D.simplicity2.latitude, longitude: CLLocationCoordinate2D.simplicity2.longitude, name: "Simplicity 2", image: "simplicity2"),
        .init(latitude: CLLocationCoordinate2D.edutown1.latitude, longitude: CLLocationCoordinate2D.edutown1.longitude, name: "Edutown 1", image: "edutown1"),
        .init(latitude: CLLocationCoordinate2D.edutown2.latitude, longitude: CLLocationCoordinate2D.edutown2.longitude, name: "Edutown 2", image: "default"),
        .init(latitude: CLLocationCoordinate2D.ice1.latitude, longitude: CLLocationCoordinate2D.ice1.longitude, name: "ICE 1", image: "ice1"),
        .init(latitude: CLLocationCoordinate2D.ice2.latitude, longitude: CLLocationCoordinate2D.ice2.longitude, name: "ICE 2", image: "ice2"),
        .init(latitude: CLLocationCoordinate2D.ice6.latitude, longitude: CLLocationCoordinate2D.ice6.longitude, name: "ICE 6", image: "ice6"),
        .init(latitude: CLLocationCoordinate2D.ice5.latitude, longitude: CLLocationCoordinate2D.ice5.longitude, name: "ICE 5", image: "ice5"),
        .init(latitude: CLLocationCoordinate2D.froogy.latitude, longitude: CLLocationCoordinate2D.froogy.longitude, name: "Froogy", image: "froogy"),
        .init(latitude: CLLocationCoordinate2D.gramedia.latitude, longitude: CLLocationCoordinate2D.gramedia.longitude, name: "Gramedia", image: "gramedia"),
        .init(latitude: CLLocationCoordinate2D.astra.latitude, longitude: CLLocationCoordinate2D.astra.longitude, name: "Astra", image: "astra"),
        .init(latitude: CLLocationCoordinate2D.courtsMegaStore.latitude, longitude: CLLocationCoordinate2D.courtsMegaStore.longitude, name: "Courta Mega Store", image: "courtsMegaStore"),
        .init(latitude: CLLocationCoordinate2D.qBig1.latitude, longitude: CLLocationCoordinate2D.qBig1.longitude, name: "QBig 1", image: "default"),
        .init(latitude: CLLocationCoordinate2D.lulu.latitude, longitude: CLLocationCoordinate2D.lulu.longitude, name: "Lulu", image: "lulu"),
        .init(latitude: CLLocationCoordinate2D.greenwichPark1.latitude, longitude: CLLocationCoordinate2D.greenwichPark1.longitude, name: "Greenwich Park 1", image: "greenwichPark1"),
        .init(latitude: CLLocationCoordinate2D.greenwichParkOffice.latitude, longitude: CLLocationCoordinate2D.greenwichParkOffice.longitude, name: "Greenwich Park Office", image: "greenwichParkOffice"),
        .init(latitude: CLLocationCoordinate2D.jadeite.latitude, longitude: CLLocationCoordinate2D.jadeite.longitude, name: "Jadeite", image: "jadeite"),
        .init(latitude: CLLocationCoordinate2D.deMaja.latitude, longitude: CLLocationCoordinate2D.deMaja.longitude, name: "De Maja", image: "deMaja"),
        .init(latitude: CLLocationCoordinate2D.deHeliconia2.latitude, longitude: CLLocationCoordinate2D.deHeliconia2.longitude, name: "De Heliconia 2", image: "deHeliconia2"),
        .init(latitude: CLLocationCoordinate2D.deNara.latitude, longitude: CLLocationCoordinate2D.deNara.longitude, name: "De Nara", image: "deNara"),
        .init(latitude: CLLocationCoordinate2D.dePark2.latitude, longitude: CLLocationCoordinate2D.dePark2.longitude, name: "De Park 2", image: "dePark2"),
        .init(latitude: CLLocationCoordinate2D.navaPark2.latitude, longitude: CLLocationCoordinate2D.navaPark2.longitude, name: "Nava Park 2", image: "default"),
        .init(latitude: CLLocationCoordinate2D.gop1.latitude, longitude: CLLocationCoordinate2D.gop1.longitude, name: "GOP 1", image: "gop1"),
        .init(latitude: CLLocationCoordinate2D.smlPlaza.latitude, longitude: CLLocationCoordinate2D.smlPlaza.longitude, name: "SML Plaza", image: "smlPlaza"),
        .init(latitude: CLLocationCoordinate2D.theBreeze.latitude, longitude: CLLocationCoordinate2D.theBreeze.longitude, name: "The Breeze", image: "theBreeze"),
        .init(latitude: CLLocationCoordinate2D.casaDeParco2.latitude, longitude: CLLocationCoordinate2D.casaDeParco2.longitude, name: "Casa De Parco 2", image: "casaDeParco2"),
        .init(latitude: CLLocationCoordinate2D.bmcDigitalHub1.latitude, longitude: CLLocationCoordinate2D.bmcDigitalHub1.longitude, name: "Lobby House of Tiktokers", image: "digitalHub1"),
        .init(latitude: CLLocationCoordinate2D.bmcDigitalHub1.latitude, longitude: CLLocationCoordinate2D.bmcDigitalHub1.longitude, name: "Digital Hub 1", image: "digitalHub1"),
        .init(latitude: CLLocationCoordinate2D.sektor13.latitude, longitude: CLLocationCoordinate2D.digitalHub2.longitude, name: "Digital Hub 2", image: "digitalHub2"),
        .init(latitude: CLLocationCoordinate2D.verdantView.latitude, longitude: CLLocationCoordinate2D.verdantView.longitude, name: "Verdant View", image: "verdantView"),
        .init(latitude: CLLocationCoordinate2D.eternity.latitude, longitude: CLLocationCoordinate2D.eternity.longitude, name: "Eternity", image: "eternity"),
        .init(latitude: CLLocationCoordinate2D.intermoda.latitude, longitude: CLLocationCoordinate2D.intermoda.longitude, name: "Intermoda", image: "intermoda")
    ]
)
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
        .init(latitude: CLLocationCoordinate2D.sektor13.latitude, longitude: CLLocationCoordinate2D.sektor13.longitude, name: "Sektor 1.3", image: "default")
    ]
)
