
import CoreLocation
import Combine

class RouteTrackerViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var currentBusStopIndex = 0
    @Published var totalBusStops: Int
    @Published var userLocation: CLLocation?
    
    private var busStops: [BusStop]
    
    var busStopList: [BusStop] {
        return busStops
    }
    
    private let locationManager = CLLocationManager()
    private let proximityThreshold: Double = 100.0 // meters
    
    init(route: RouteModel, startIndex: Int, endIndex: Int) {
        // Ensure indices are valid and within bounds
        let start = max(0, startIndex)
        let end = min(route.busStops.count - 1, endIndex)
        // Slice the bus stops array from startIndex to endIndex (inclusive)
        self.busStops = Array(route.busStops[start...end])
        self.totalBusStops = self.busStops.count
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
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
    
    func getImage(index: Int) -> String {
        return busStops[index].image
    }
}
