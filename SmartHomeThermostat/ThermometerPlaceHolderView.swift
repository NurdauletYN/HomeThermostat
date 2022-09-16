//
//  ThermometerPlaceHolderView.swift
//  SmartHomeThermostat
//
//  Created by user on 30.08.2022.
//

import SwiftUI

struct ThermometerPlaceHolderView: View {
    private let placeholderSize: CGFloat = 244
    
    var body: some View {
        Circle()
            .fill(LinearGradient([Color("Placeholder 1"), Color("Placeholder 2")]))
            .frame(width: placeholderSize, height: placeholderSize)
            .shadow(color: Color("Placeholder Drop Shadow"), radius: 30, x: 0, y: 15) // Drop Shadow
            .overlay{
                // MARK: Placeholder Border
                Circle()
                    .stroke(LinearGradient([.black.opacity(0.36), .white.opacity(0.11)]), lineWidth: 0.8)
            }
            .overlay{
                // MARK: Placeholder Inner Shadow
                Circle()
                    .stroke(Color("Placeholder Inner Shadow"), lineWidth: 2)
                    .blur(radius: 7)
                    .offset(x: 0, y: 3)
                    .mask{
                        Circle()
                            .fill(LinearGradient([.black, .clear], startPoint: .top, endPoint: .bottom))
                    }
            }
        
        
    }
}

struct ThermometerPlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        ThermometerPlaceHolderView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
    }
}
