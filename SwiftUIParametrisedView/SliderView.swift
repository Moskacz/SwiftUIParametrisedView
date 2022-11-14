//
//  SliderView.swift
//  SwiftUIParametrisedView
//
//  Created by Michal Moskala on 14/11/2022.
//

import SwiftUI

struct SliderView: View {
    
    @State
    private var value: Double = 0.3
    
    var body: some View {
        HStack {
            Text("Title")
            Slider(value: $value)
            Text(String(format: "%0.2f", value))
        }
    }
}

struct SliderView_Preview: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
