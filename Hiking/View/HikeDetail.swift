//
//  HikeDetail.swift
//  Hiking
//
//  Created by Marcus Y. Kim on 4/4/23.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable().aspectRatio(contentMode: .fit)
                
            Text(hike.name)
            
            Text(String(format: "%.2f", hike.miles) + " miles")
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Pacific Ocean", imageURL: "hollywood", miles: 300000))
    }
}
