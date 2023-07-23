//
//  ContentView.swift
//  ColorView
//
//  Created by Zalman Zoteev on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...1)
    @State private var blueSliderValue = Double.random(in: 0...1)
    @State private var greenSliderValue = Double.random(in: 0...1)
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: redSliderValue,
                            green: greenSliderValue,
                            blue: blueSliderValue))
                
            Spacer()
            SliderView(value: $redSliderValue, color: .red)
            SliderView(value: $blueSliderValue, color: .blue)
            SliderView(value: $greenSliderValue, color: .green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderView: View {
    @Binding var value: Double
    @State  var color: Color
    var body: some View {
        HStack{
            Slider(value: $value)
                .accentColor(color)
                
        
            Text("\(lround(value * 255))")
                .font(.largeTitle)
        }.padding()
    }
}
