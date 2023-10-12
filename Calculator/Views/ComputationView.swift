//
//  ComputationView.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/11/23.
//

import SwiftUI

struct ComputationView: View {
    let currentComputation: String
    let mainResult: String
    
    var body: some View {
        VStack(spacing:10) {
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundStyle(foregroundDigitsColor)
                    .font(UIDevice .isIPAD ? .largeTitle : .body)
                .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            HStack {
                Spacer()
                Text(mainResult)
                    .foregroundStyle(foregroundDigitsColor)
                    .font(.largeTitle)
                    .fontWeight(.bold
                    )
                .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    VStack() {
        Spacer()
        ComputationView(currentComputation: "12912336+123123", mainResult: "129123")
        Spacer()
        ComputationView(currentComputation: "129236+123123", mainResult: "129123")
        Spacer()
        ComputationView(currentComputation: "1287782336+123123", mainResult: "129123")
        Spacer()
    }
}
