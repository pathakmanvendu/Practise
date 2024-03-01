//
//  Weather.swift
//  Practise
//
//  Created by Manvendu Pathak on 24/02/24.
//

import SwiftUI

struct Weather: View {
    let weatherData: [WeatherInfo] = [
    WeatherInfo(image: "snow", temp: 5, city: "New York"),
    WeatherInfo(image: "cloud", temp: 5, city: "Kansas City"),
    WeatherInfo(image: "sun.max", temp: 80, city: "San Francisco"),
    WeatherInfo(image: "snow", temp: 5, city: "Chicago"),
    WeatherInfo(image: "cloud.rain", temp: 49, city: "Washington DC"),
    WeatherInfo(image: "cloud.heavyrain", temp: 60, city: "Seattle"),
    WeatherInfo(image: "sun.min", temp: 75, city: "Baltimore"),
    WeatherInfo(image: "sun.dust", temp: 65, city: "Austin"),
    WeatherInfo(image: "sunset", temp: 78, city: "Houston"),
    WeatherInfo(image: "moon", temp: 80, city: "Boston"),
    WeatherInfo(image: "moon.circle", temp: 45, city: "Denver"),
    WeatherInfo(image: "cloud.snow", temp: 8, city: "Memphis"),
   ]
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                HStack {
                    Image(systemName: weather.image)
                        .frame(width: 50, alignment: .leading)
                    Text("\(weather.temp) F")
                        .frame(width: 80, alignment: .leading)
                    Text(weather.city)
                }
                .font(.system(size:25))
                .padding()
                
            }
        }
    }
}

struct Weather_Previews: PreviewProvider {
    static var previews: some View {
        Weather()
    }
}
