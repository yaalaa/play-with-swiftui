//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by lev on 05.03.2022.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
