//
//  z1_5.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct z1_5: View {
    @State private var number1: String = "0"
    @State private var number2: String = "0"
    @State private var result: String = ""
    @State private var operation: OperationType = .none

    enum OperationType: String, CaseIterable {
        case add = "+", subtract = "-", multiply = "*", divide = "/", none = ""

        var displayName: String {
            self.rawValue
        }
    }

    var body: some View {
        Text("Zadanie 1.5")
                        .font(.largeTitle)                        .padding(.top)

        VStack {
            Text("Wprowadź dwie liczby rzeczywiste")
                .font(.title2)
                .padding()

            HStack {
                NumberInputField(number: $number1)
                NumberInputField(number: $number2)
            }

            OperationsRow(selectedOperation: $operation)

            Button(action: calculateResult) {
                Text("Calculate")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            ResultDisplay(result: $result)
        }
        .padding()
    }

    private func calculateResult() {
        let value1 = Double(number1) ?? 0
        let value2 = Double(number2) ?? 0

        switch operation {
        case .add:
            result = "\(value1 + value2)"
        case .subtract:
            result = "\(value1 - value2)"
        case .multiply:
            result = "\(value1 * value2)"
        case .divide:
            result = value2 != 0 ? "\(value1 / value2)" : "Pamiętaj ... użytkowniku nie dzielimy przez zero"
        default:
            result = "Wybierz działanie"
        }
    }
}

struct NumberInputField: View {
    @Binding var number: String

    var body: some View {
        TextField("0", text: $number)
            .keyboardType(.decimalPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 100)
    }
}

struct OperationsRow: View {
    @Binding var selectedOperation: z1_5.OperationType

    var body: some View {
        HStack {
            ForEach(z1_5.OperationType.allCases.filter { $0 != .none }, id: \.self) { operation in
                Button(operation.displayName) {
                    selectedOperation = operation
                }
                .frame(width: 60, height: 40)
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(selectedOperation == operation ? Color.orange : Color.black, lineWidth: 2)
                )
            }
        }
        .padding()
    }
}

struct ResultDisplay: View {
    @Binding var result: String

    var body: some View {
        Text(result)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(white: 0.85))
            .cornerRadius(5)
    }
}

struct Z1_5View_Previews: PreviewProvider {
    static var previews: some View {
        z1_5()
    }
}

