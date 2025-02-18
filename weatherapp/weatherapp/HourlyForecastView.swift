//
//  HourlyForecastView.swift
//  weatherapp
//
//  Created by Jesse Jiang on 2/17/25.
//

import SwiftUI

struct HourlyForecastView: View {
    var location: String
    var temp: Int
    var weather: String
    var high: Int
    var low: Int
    
    var body: some View {
        VStack {
            Text(location)
                .font(.system(size:50))
            ZStack {
                Text("\(temp)")
                    .font(.system(size:100))
                Image(systemName: "circle")
                        .font(.system(size:20))
                        .padding(.bottom, 45)
                        .padding(.leading, 140)
            }
            Text(weather)
                .font(.system(size:20))
                .foregroundColor(.gray)
            ZStack{
                    Text("H:\(high)")
                        .font(.system(size:20))
                        .padding(.trailing, 63)
                    Image(systemName: "circle")
                        .font(.system(size:7))
                        .padding(.bottom, 5)
                        .padding(.trailing, 9)
                    Text("L:\(low)")
                    .font(.system(size:20))
                    .padding(.leading, 56)
                    Image(systemName: "circle")
                        .font(.system(size:7))
                        .padding(.bottom, 5)
                        .padding(.leading,108)
            }
            .padding(.bottom, 15)
        }
        .foregroundColor(.white)

    }
}
