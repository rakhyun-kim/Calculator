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
        VStack {
            Text(currentComputation)
            Text(mainResult)
        }
    }
}

#Preview {
    ComputationView(currentComputation: "5+1", mainResult: "6")
}
