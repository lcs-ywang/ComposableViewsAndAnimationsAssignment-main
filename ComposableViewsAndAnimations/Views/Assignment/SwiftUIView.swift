//
//  SwiftUIView.swift
//  ComposableViewsAndAnimations
//
//  Created by Yining Wang on 2021-03-02.
//

import SwiftUI

struct SwiftUIView: View {

    var fillToValue: CGFloat
    
    @State private var completionAmount: CGFloat = 0.0

    @State private var useAnimation = false
    
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .gray, .black])
        let conic = AngularGradient(gradient: colors, center: .center, startAngle: .zero, endAngle: .degrees(360))
        
        Circle()
            .trim(from: 0, to: completionAmount)
            .stroke(conic, lineWidth: 75)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(-90))
            .onReceive(timer) { _ in
                    
        
                

                    
                        

                        guard completionAmount < fillToValue / 80.0 else { return }
                        
                        withAnimation(.linear(duration: 0.06)) {
                            completionAmount += fillToValue / 100.0 / 100.0
                        }
                        
                    }
                
        }
    }
    



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(fillToValue: 79)
    }
}
