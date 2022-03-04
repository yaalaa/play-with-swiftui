//
//  CircularImage.swift
//  Landmarks
//
//  Created by lev on 03.03.2022.
//

import SwiftUI

struct CircularImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image : Image("turtlerock"))
    }
}
