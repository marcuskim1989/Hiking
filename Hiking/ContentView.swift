//
//  ContentView.swift
//  Hiking
//
//  Created by Marcus Y. Kim on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    
    var body: some View {
        List(self.hikes, id: \.name) {
            hike in Text(hike.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
