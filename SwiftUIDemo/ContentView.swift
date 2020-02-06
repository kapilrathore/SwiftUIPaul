//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by kapilrathore-mbp on 06/02/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    private let tipPercentageOptions = [0, 5, 10, 15, 20]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Check Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("How much do you want to tip?")) {
                    Picker("Number of people", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentageOptions.count) {
                            Text("\(self.tipPercentageOptions[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Text("$ \(self.amountPerPerson(), specifier: "%.2f")")
                }
            }
            .navigationBarTitle("Tip Calculator")
        }
    }
    
    private func amountPerPerson() -> Double {
        let numberOfPeople = Double(self.numberOfPeople + 2)
        let tipPercentage = Double(self.tipPercentageOptions[self.tipPercentage])
        let checkAmount = Double(self.checkAmount) ?? 0
        
        let tipAmount = checkAmount * tipPercentage/100
        let totalAmount = checkAmount + tipAmount
        return totalAmount/numberOfPeople
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
