//
//  CalcsButtonsView.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/11/23.
//

import SwiftUI

struct CalcsButtonsView: View {
    
    @Binding var currentComputation: String
    @Binding var mainResult: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CalcsButtonsView(currentComputation: .constant("5+1"), mainResult: .constant("6"))
}
