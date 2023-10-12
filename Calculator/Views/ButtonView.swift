//
//  ButtonView.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/11/23.
//

import SwiftUI

struct ButtonView: View {
    
    let calcButton: CalcButton
    
    let fgColor: Color
    let bgColor: Color
    let width: CGFloat
    
    var systemImage: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    var text: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? nil : value
    }
    var buttonDim: CGFloat { UIDevice.isIPAD ? width  / 6 :
        width / 5 }
    
    var body: some View {
        ZStack {
            if let text = text {
                Text(text)
            }
            if let systemImage = systemImage {
                Image(systemName: systemImage)
            }
        }
        .font(UIDevice.isIPAD ? .largeTitle : .title2)
        .fontWeight(UIDevice.isIPAD ? .heavy : .semibold)
        .frame(width: buttonDim, height: buttonDim)
        .foregroundStyle(fgColor)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: bgColor.opacity(0.5), radius: 5, x: 5, y: 5)
        
    }
}

#Preview {
    VStack {
        ButtonView(
            calcButton: .negative, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor,
            width:375)
        ButtonView(
            calcButton: .undo, fgColor: foregroundTopButtonsColor, bgColor: buttonBackgroundColor,
            width:375)
        ButtonView(
            calcButton: .percent, fgColor: foregroundRightButtonsColor, bgColor: buttonBackgroundColor,
            width:375)
    }
    
}
