import UIKit

//3
func celsiusToFahrenheit(_ celsius: Float) -> Float {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Float) -> Float {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Float) -> Float {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Float) -> Float {
    return (fahrenheit - 32) * 5/9 + 273.15
}

func kelvinToCelsius(_ kelvin: Float) -> Float {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Float) -> Float {
    return (kelvin - 273.15) * 9/5 + 32
}

func temperatureConverter() {
    print("Enter the temperature value:")
    guard let input = readLine(), let temperature = Float(input) else {
        print("Invalid temperature input.")
        return
    }

    print("Enter the unit of the temperature (C for Celsius, F for Fahrenheit, K for Kelvin):")
    guard let unit = readLine()?.uppercased() else {
        print("Invalid unit input.")
        return
    }
    
    switch unit {
    case "C", "c":
        let fahrenheit = celsiusToFahrenheit(temperature)
        let kelvin = celsiusToKelvin(temperature)
        print("Temperature in Fahrenheit: \(fahrenheit)°F")
        print("Temperature in Kelvin: \(kelvin)K")
        
    case "F", "f":
        let celsius = fahrenheitToCelsius(temperature)
        let kelvin = fahrenheitToKelvin(temperature)
        print("Temperature in Celsius: \(celsius)°C")
        print("Temperature in Kelvin: \(kelvin)K")
        
    case "K", "k":
        let celsius = kelvinToCelsius(temperature)
        let fahrenheit = kelvinToFahrenheit(temperature)
        print("Temperature in Celsius: \(celsius)°C")
        print("Temperature in Fahrenheit: \(fahrenheit)°F")
        
    default:
        print("Unknown temperature unit.")
    }
}
temperatureConverter()
