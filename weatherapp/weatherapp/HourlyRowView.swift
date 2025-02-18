//
//  HourlyRowView.swift
//  weatherapp
//
//  Created by Jesse Jiang on 2/17/25.
//

import SwiftUI

struct HourlyRowView: View {
    var time: String
    var image: String
    var temp: Int
    var body: some View {
            VStack {
                Text(time)
                Image(systemName: (image))
                    .foregroundColor(Color.orange)
                ZStack {
                    Text("\(temp)")
                    Image(systemName: "circle")
                        .padding(.bottom, 10)
                        .font(.system(size: 7))
                        .padding(.leading, 40)
                }
            }
            }
}
