//
//  ContentView.swift
//  Safe Surfer
//
//  Created by Brian Seo on 2023-03-13.
//

import SwiftUI
import FamilyControls

struct ContentView: View {
    @StateObject var model = MyModel.shared
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Button("Select Apps to Discourage") {
                isPresented = true
            }
            .familyActivityPicker(isPresented: $isPresented, selection: $model.selectionToDiscourage)
            Button("Start Monitoring") {
                model.initiateMonitoring()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
