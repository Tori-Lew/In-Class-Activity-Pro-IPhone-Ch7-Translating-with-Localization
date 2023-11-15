//
//  ContentView.swift
//  In-Class Activity Pro IPhone Ch7 Translating with Localization
//
//  Created by Student Account on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var changeMessage = true
    @State var timesPressed = 0
    @State var name = ""
    var placeholder: LocalizedStringKey = "placeholder-label"
    @State var pi = 3.1415
    let date: Date
        let dateFormatter: DateFormatter
        init() {
            date = Date()
            dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .short
        }
    var body: some View {
        VStack {
            TextField(placeholder, text: $name)
                .padding()
            Text("greeting-label \(name)")
            Button("button-label", action: {
                timesPressed += 1
                print("Times pressed: \(timesPressed)")
            })
            Text("\(timesPressed) buttonResult")
            Text("pi-label \(pi)")
            Text(date, formatter: dateFormatter)
        }//.background(changeColor ? Color.red : Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
            ContentView()
                .environment(\.locale, .init(identifier: "es"))
        }
    }
}
