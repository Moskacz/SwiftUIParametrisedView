//
//  SliderView.swift
//  SwiftUIParametrisedView
//
//  Created by Michal Moskala on 14/11/2022.
//

import SwiftUI

struct SliderView: View {
    @Environment(\.sliderColor)
    var sliderColor
    
    @State
    private var value: Double = 0.3
    
    var body: some View {
        HStack {
            Text("Title")
            Slider(value: $value)
                .accentColor(sliderColor)
            Text(String(format: "%0.2f", value))
        }
    }
}

struct SliderView_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            SliderView()
            SliderView()
        }
        .sliderColor(.orange)
    }
}

fileprivate struct SliderColorKey: EnvironmentKey {
    static var defaultValue = Color.blue
}

extension EnvironmentValues {
    var sliderColor: Color {
        get { self[SliderColorKey.self] }
        set { self[SliderColorKey.self] = newValue }
    }
}

extension View {
    func sliderColor(_ color: Color) -> some View {
        environment(\.sliderColor, color)
    }
}
