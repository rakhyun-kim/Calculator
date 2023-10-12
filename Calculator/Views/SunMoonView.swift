//
//  SunMoonView.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/11/23.
//

import SwiftUI

struct SunMoonView: View {
    var lightMode: Bool
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "sun.min")
                .foregroundStyle(lightMode ? sunOrMoonSelectedColor : sunOrMoonNotSelectedColor)

            
            Image(systemName: "moon")
                .foregroundStyle(lightMode ? sunOrMoonNotSelectedColor : sunOrMoonSelectedColor)

        }
        .imageScale(.large)
        .font(UIDevice.isIPAD ? .title : .body)
        .fontWeight(UIDevice.isIPAD ? .semibold : .regular)
        .padding()
        .background(secondaryBackgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    VStack {
        SunMoonView(lightMode: true)
        SunMoonView(lightMode: false)
    }
}
