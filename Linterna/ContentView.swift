//
//  ContentView.swift
//  Linterna
//
//  Created by DAVID BT on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var lamp = false
    @State var text = false
    var body: some View {
        VStack{
            ZStack{
                Color(lamp ? .black : .white)
                Button(action: {
                    lamp.toggle()
                    text.toggle()
                }) {
                    if text {
                        Text("Encender")
                    } else {
                        Text("Apagar")
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
