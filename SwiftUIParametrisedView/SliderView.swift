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
        Slider(value: $value)
    }
}

struct SliderView_Preview: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
