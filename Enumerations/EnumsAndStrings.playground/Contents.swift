
import UIKit
/*
enum NetworkError: Error {
    case badURL
    case decodingError
}

enum TemperatureUnit: String {
    case imperial = "F"
    case metric = "C"
}

private func getWeatherURL(unit: TemperatureUnit) -> URL? {
    
    switch unit {
        case .imperial:
            return URL(string: "www.weather.com/?unit=fahrenheit")
        case .metric:
            return URL(string: "wwww.weather.com/?unit=celsius")
    }
    
}

func getWeather(unit: TemperatureUnit) throws {
    
    guard let weatherURL = getWeatherURL(unit: unit) else {
        throw NetworkError.badURL
    }
    
    print(weatherURL)
    
    // code to call the weather API
    
}

do {
    try getWeather(unit: .metric)
} catch {
    print(error)
} */

enum ImageType: String {
    case jpg
    case bmp
    case png
    
    init?(rawValue: String) {
        switch rawValue.lowercased() {
            case "jpg", "jpeg": self = .jpg
            case "bmp", "bitmap": self = .bmp
            case "png": self = .png
            default: return nil
        }
    }
}

func iconName(for fileExtension: String) -> String {
    
    guard let imageType = ImageType(rawValue: fileExtension) else {
        return "assetUnknown"
    }
    
    switch imageType {
        case .jpg: return "assetJPG"
        case .bmp: return "assetBMP"
        case .png: return "assetPNG"
    }
}

iconName(for: "jpg")
iconName(for: "jpeg")

iconName(for: "bmp")
iconName(for: "bitmap")


