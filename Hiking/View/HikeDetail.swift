//
//  HikeDetail.swift
//  Hiking
//
//  Created by Marcus Y. Kim on 4/4/23.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable().aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
                    
                }
                
            Text(hike.name)
            
            Text(String(format: "%.2f", hike.miles) + " miles")
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Pacific Ocean", imageURL: "hollywood", miles: 300000))
    }
}
