//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var precentage: CGFloat = 100.0
    
    // MARK: Computed properties
    var body: some View {
        
        List {
            
            VStack(alignment: .leading) {
                
                Group {
                    
                    Text("Description")
                        .font(.title3)
                        .bold()
                        .padding(.top)
                    
                    Text("""

                        A person's life span keeps increasing with the passage of time. However, age is usually expressed by numbers, and these numbers cannot be particularly intuitive to feel how fast people are aging.

                        This view assumes that a person's life span is 80 years old, and uses a pie chart to show the current age. Use a pie chart to make people feel the waste of time and remind people to cherish time more intuitively.
                        


                        """)
                    
                    Slider(value: $precentage, in: 0...80, step: 1.0) {
                        Text("Completion amount")
                    }
                    
                }
                .padding(.bottom)
                
            }
            
            NavigationLink(destination: CustomComposableView(fillToValue: precentage)) {
                SimpleListItemView(title: "Age Right Now",
                                   caption: "You are \(String(format: "%.0f", precentage))years old")
                
            }
            .padding()
            .navigationTitle("Completion Age")
            
        }
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
