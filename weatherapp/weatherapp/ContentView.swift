//
//  ContentView.swift
//  weatherapp
//
//  Created by Jesse Jiang on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HourlyForecastView(location: "Chapel Hill", temp: 35,weather:"Sunny", high:43, low: 27)
            ZStack{
                Rectangle()
                    .fill(Color(red:54/255,    green:143/255,    blue:241/255))
                    .frame(width: 380, height: 137)
                    .cornerRadius(20)
                ZStack {
                    Image(systemName: "clock")
                        .padding(.trailing, 340)
                        .padding(.bottom, 100)
                    Text("HOURLY FORECAST")
                        .padding(.trailing, 118)
                        .padding(.bottom, 100)
                    ZStack {
                        HourlyRowView(time: "Now", image: "sun.max.fill", temp: 35)
                            .padding(.trailing, 320)
                        HourlyRowView(time: "9AM", image: "cloud.sun.fill", temp: 78)
                            .padding(.trailing, 200)
                        HourlyRowView(time: "10AM", image: "sun.max.fill", temp: 98)
                            .padding(.trailing, 70)
                        HourlyRowView(time: "11AM", image: "sun.max.fill", temp: 65)
                            .padding(.leading, 50)
                        HourlyRowView(time: "12PM", image: "cloud.drizzle.fill", temp: 43)
                            .padding(.leading, 170)
                        HourlyRowView(time: "1PM", image: "sun.max.fill", temp: 43)
                            .padding(.leading, 300)
                    }
                    .padding(.top, 20)
                }
                .font(.system(size:20))
                .foregroundColor(.white)
            }
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red:54/255,    green:143/255,    blue:241/255), Color(red:125/255,    green:183/255,    blue:253/255)]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 380, height: 400)
                    .cornerRadius(20)
                ZStack {
                    Image(systemName: "calendar")
                        .padding(.bottom, 350)
                        .padding(.trailing, 330)
                    Text("10-DAY FORECAST")
                        .padding(.bottom, 350)
                        .padding(.trailing, 120)
                    WeeklyForecastView(day: "Today", weather:"sun.max.fill", low:27, high:53, rect: 164)
                        .padding(.bottom, 280)
                    WeeklyForecastView(day: "Mon", weather:"cloud.drizzle.fill", low:60, high:72, rect: 172)
                        .padding(.bottom, 200)
                    WeeklyForecastView(day: "Tue", weather:"cloud.sun.fill", low:10, high:24, rect: 132)
                        .padding(.bottom, 130)
                    WeeklyForecastView(day: "Wed", weather:"cloud.drizzle.fill", low:48, high:59, rect: 164)
                        .padding(.bottom, 60)
                    WeeklyForecastView(day: "Thu", weather:"cloud.fill", low:45, high:53, rect: 182)
                        .padding(.top, 13)

                    WeeklyForecastView(day: "Fri", weather:"cloud.drizzle.fill", low:31, high:43, rect: 122)
                        .padding(.top, 85)
                    WeeklyForecastView(day: "Sat", weather:"cloud.sun.fill", low:65, high:73, rect: 167)
                        .padding(.top, 145)
                    WeeklyForecastView(day: "Sun", weather:"cloud.fill", low:81, high:93, rect: 145)
                        .padding(.top, 215)
                    WeeklyForecastView(day: "Mon", weather:"cloud.drizzle.fill", low:22, high:34, rect: 100)
                        .padding(.top, 285)
                    WeeklyForecastView(day: "Tue", weather:"sun.max.fill", low:54, high:67, rect: 180)
                        .padding(.top, 356)
                }
                .font(.system(size:20))
                .foregroundColor(.white)
            }
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red:17/255, green:116/255, blue:244/255), Color(red: 0.7333, green: 0.8706, blue: 0.9725)]), startPoint: .top, endPoint: .bottom))
    }
}
#Preview {
    ContentView()
}
