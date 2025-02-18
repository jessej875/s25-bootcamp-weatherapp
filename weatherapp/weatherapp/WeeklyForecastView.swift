//
//  WeeklyForecastView.swift
//  weatherapp
//
//  Created by Jesse Jiang on 2/17/25.
//

import SwiftUI

struct WeeklyForecastView: View {
    var day: String
    var weather: String
    var low: Int
    var high: Int
    var rect: Double
    var body: some View {
        HStack {
            ZStack {
                Text(day)
                    .padding(.trailing, 300)
                Image(systemName: weather)
                    .padding(.trailing, 150)
                Text("\(low)")
                    .padding(.trailing, 32)
                Image(systemName: "circle")
                    .padding(.bottom, 10)
                    .font(.system(size: 7))
                    .padding(.leading, 7)
                Rectangle()
                    .fill(Color(red: 41/255, green: 130/255, blue: 249/255))
                    .frame(width:100,height:7)
                    .padding(.leading, 143)
                Rectangle()
                    .fill(Color(red: 0.1647, green: 0.7137, blue: 0.9961))
                    .frame(width:30,height:7)
                    .padding(.leading, rect)
                Text("\(high)")
                    .padding(.leading, 300)
                Image(systemName: "circle")
                    .padding(.bottom, 10)
                    .font(.system(size: 7))
                    .padding(.leading, 336)

            }
        }
    }
}

