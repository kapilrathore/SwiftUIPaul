//
//  ContentView.swift
//  SwiftUIMacOSDemo
//
//  Created by kapilrathore-mbp on 06/02/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//qwqa2q23wderu7890--09871

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Section {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
