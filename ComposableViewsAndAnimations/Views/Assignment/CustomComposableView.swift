//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI
import UIKit

struct CustomComposableView: View {
    
    // MARK: Stored properties
    
    // Show completion up to what percentage?
    var fillToValue: CGFloat
    
    // Controls the amount of trim to show, as a percentage
    @State private var completionAmount: CGFloat = 0.0
    
    
    
    // Whether to apply the animation
    @State private var useAnimation = false
    
    // Update the animation on this interval (every 0.03 seconds)
    // The full animation will always take 3 seconds
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        VStack{
            Text("We do not know the true value of our moments until they have undergone the test of memory.")
                .font(Font.custom("AmericanTypeWriter", size: 18.0))
                .padding([.top, .leading, .trailing])
                .accentColor(.blue)
                       
            
            
                Spacer()
            ZStack{
                
                Circle()
                    // Traces, or makes a trim, for the outline of a shape
                    // 0 is no trim, 1 is trim around the entire outline of the shape
                    .trim(from: 0, to: completionAmount)
                    .stroke(Color.blue, lineWidth: 75)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-90))
                    .onReceive(timer) { _ in
                        
                        // Stop when completion amount reaches the fill to value
                        guard completionAmount < fillToValue / 80.0 else { return }
                        
                        // Animate the trim being closed
                        withAnimation(.linear(duration: 0.06)) {
                            completionAmount += fillToValue / 100.0 / 100.0
                        }
                        
                    }
                Text("\(String(format: "%3.0f", (completionAmount) * 100.0))%")
                    .font(Font.custom("Courier-Bold", size: 24.0))
                    .animation(.linear(duration: 0.06))
                    .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .leading, endPoint: .trailing))

            }
            Spacer()
            

        }
    }
    
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView(fillToValue: 70)
    }
}

