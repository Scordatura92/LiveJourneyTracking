
import CoreLocation
import Combine

class RouteTrackerViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var currentBusStopIndex = 0
    @Published var totalBusStops: Int
    @Published var userLocation: CLLocation?

    private var busStops: [BusStop] = [
//        .init(latitude: -6.2774398319866735, longitude: 106.6351100627204),
//        .init(latitude: -6.2764343709166175, longitude: 106.6396692394757),
//        .init(latitude: -6.280864711699004, longitude: 106.63988139455049),
//        .init(latitude: -6.283340034237365, longitude: 106.64201757805095),
//        .init(latitude: -6.280864711699004, longitude: 106.63988139455049),
//        .init(latitude: -6.2870820283095865, longitude: 106.64941352646103),
//        .init(latitude: -6.2910308837890625, longitude: 106.6497573852539),
//        .init(latitude: -6.2914483878678205, longitude: 106.64828959444202)
        
        .init(latitude: CLLocationCoordinate2D.studento2.latitude, longitude: CLLocationCoordinate2D.studento2.longitude, name: "Studento 2"),
        .init(latitude: CLLocationCoordinate2D.albera.latitude, longitude: CLLocationCoordinate2D.albera.longitude, name: "Albera"),
        .init(latitude: CLLocationCoordinate2D.foresta1.latitude, longitude: CLLocationCoordinate2D.foresta1.longitude, name: "Foresta 1"),
        .init(latitude: CLLocationCoordinate2D.gop1.latitude, longitude: CLLocationCoordinate2D.gop1.longitude, name: "GOP 1"),
        .init(latitude: CLLocationCoordinate2D.smlPlaza.latitude, longitude: CLLocationCoordinate2D.smlPlaza.longitude, name: "SML Plaza"),
        
    ]

    private let locationManager = CLLocationManager()
    private let proximityThreshold: Double = 20.0 // meters

    override init() {
        self.totalBusStops = busStops.count
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 3
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //If the statement after guard fails, then run the code below it
        guard currentBusStopIndex < busStops.count,
              let location = locations.last else { return }

        self.userLocation = location
        let currentTarget = busStops[currentBusStopIndex]
        let targetLocation = CLLocation(latitude: currentTarget.latitude, longitude: currentTarget.longitude)

        if location.distance(from: targetLocation) < proximityThreshold {
            currentBusStopIndex += 1
        }
    }
    
    func getLocationName(index: Int) -> String {
        return busStops[index].name
    }
}
