//
//  ContentView.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/10/23.
//

import SwiftUI

struct MainCalculatorView: View {
    
    @State var lightMode: Bool = true
    
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var body: some View {
        ZStack {
            primaryBackgroundColor.ignoresSafeArea()
            
            
            VStack {
                SunMoonView(lightMode: lightMode)
                    .onTapGesture {
                        withAnimation {
                            lightMode.toggle()
                        }
                    }
                Spacer()
                
                ComputationView(
                    currentComputation:
                        currentComputation, mainResult: mainResult
                    )
                Spacer()
                
                CalcsButtonsView(
                    currentComputation:
                        $currentComputation, mainResult: $mainResult
                    )
            }
            .padding()
        }
        .environment(\.colorScheme, lightMode ? .light : .dark)
    }
}

#Preview {
    MainCalculatorView()
}
