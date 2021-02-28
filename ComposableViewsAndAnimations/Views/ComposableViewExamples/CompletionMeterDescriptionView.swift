//
//  CompletionMeterDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CompletionMeterDescriptionView: View {
    
    // MARK: Stored properties
    @State private var percentComplete: CGFloat = 50.0
    
    // MARK: Computed properties
    var body: some View {
        
        List {
            
            VStack(alignment: .leading) {
                
                Group {
                    
                    Text("Description")
                        .font(.title2)
                        .bold()
                        .padding(.top)
                    
                    Text("""
                        This view could be used within an app to show how far someone has progressed through a tutorial, or their score after completing a quiz.

                        Select a value below using the slider.

                        Then navigate to the view to see the progress meter.
                        """)
                    
                    Slider(value: $percentComplete, in: 0...100, step: 1.0) {
                        Text("Completion amount")
                    }
                                        
                }
                .padding(.bottom)

            }
            
            NavigationLink(destination: CompletionMeterView(fillToValue: percentComplete)) {
                SimpleListItemView(title: "Completion Meter",
                                   caption: "Will illustrate fill to \(String(format: "%.0f", percentComplete))%")
            }
            
        }
        .padding()
        .navigationTitle("Completion Meter")
        
    }
}

struct CompletionMeterDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CompletionMeterDescriptionView()
        }
    }
}
