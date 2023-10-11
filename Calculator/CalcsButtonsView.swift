//
//  CalcsButtonsView.swift
//  Calculator
//
//  Created by Rakhyun Kim on 10/11/23.
//

import SwiftUI

struct CalcButtonModel: Identifiable {
    let id = UUID()
    let calcButton: CalcButton
    var color:Color = foregroundDigitsColor
}

struct RowOfCalcButtonsModel: Identifiable {
    let id = UUID()
    let row: [CalcButtonModel]
}

struct CalcsButtonsView: View {
    
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    let buttonData: [RowOfCalcButtonsModel] = [
    RowOfCalcButtonsModel(row: [
        CalcButtonModel(
        calcButton: .clear, color: foregroundTopButtonsColor),
        CalcButtonModel(
        calcButton: .negative, color: foregroundTopButtonsColor),
        CalcButtonModel(
        calcButton: .percent, color: foregroundTopButtonsColor),
        CalcButtonModel(
        calcButton: .divide, color: foregroundRightButtonsColor)
    ]),
    RowOfCalcButtonsModel(row: [CalcButtonModel(calcButton: .seven),
                                CalcButtonModel(calcButton: .eight),
                                CalcButtonModel(calcButton: .nine),
                                CalcButtonModel(calcButton: .multiply, color: foregroundRightButtonsColor)
                               ]),
    RowOfCalcButtonsModel(row: [CalcButtonModel(calcButton: .four),
                                CalcButtonModel(calcButton: .five),
                                CalcButtonModel(calcButton: .six),
                                CalcButtonModel(calcButton: .divide, color: foregroundRightButtonsColor)
                               ]),
    RowOfCalcButtonsModel(row: [CalcButtonModel(calcButton: .one),
                                CalcButtonModel(calcButton: .two),
                                CalcButtonModel(calcButton: .three),
                                CalcButtonModel(calcButton: .add, color: foregroundRightButtonsColor)
                               ]),
    RowOfCalcButtonsModel(row: [CalcButtonModel(calcButton: .undo),
                                CalcButtonModel(calcButton: .zero),
                                CalcButtonModel(calcButton: .decimal),
                                CalcButtonModel(calcButton: .equal, color: foregroundRightButtonsColor)
                               ])
        
    ]
    
    var body: some View {
        Grid() {
            ForEach(buttonData) { rowOfCalcButtonsModel in
                GridRow {
                    ForEach(rowOfCalcButtonsModel.row) { calcButtonModel in
                        Button(action: {
                            // Logic takes place here
                            print("Button pressed")
                        }, label: {
                            ButtonView(calcButton: calcButtonModel.calcButton, fgColor: calcButtonModel.color, bgColor: buttonBackgroundColor)
                        })
                    }
                    
                }
            }
        }
        .padding()
        .background(secondaryBackgroundColor.cornerRadius(20))
    }
}

#Preview {
    CalcsButtonsView(currentComputation: .constant("5+1"), mainResult: .constant("6"))
}
