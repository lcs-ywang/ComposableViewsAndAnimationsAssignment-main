//
//  TutorialsView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct TutorialsView: View {
    
    // MARK: Computed properties
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Group {
                    
                    Group {

                        Text("Loading Indicators")
                            .font(.title2)
                            .bold()
                            .padding(.top)
                        
                        Text("""
                            Have ever wondered how those little "spinners" that indicate when we have to wait for a computer to do something are built?

                            This tutorial has several examples of how to build such indicators.

                            Give them a try, and then consider building your own version with a different look.
                            """)
                            
                        // Create An Awesome Loading State Indicator with SwiftUI
                        // https://medium.com/better-programming/create-an-awesome-loading-state-using-swiftui-9815ff6abb80
                        Link(destination: URL(string: "https://medium.com/better-programming/create-an-awesome-loading-state-using-swiftui-9815ff6abb80")!) {
                            Text("Create An Awesome Loading State Indicator with SwiftUI")
                        }

                    }

                    Group {

                        Text("Transforming Views")
                            .font(.title2)
                            .bold()
                            .padding(.top)
                        
                        Text("""
                            Understanding the difference between implicit and explicit animations is fairly straightforward.

                            Then there are different animation timing options that can be used (.default, .easeIn, etc).

                            How, though, can views themselves be transformed? This is useful knowledge to be able to build more interesting animations.

                            Scroll down to the "Transformations" section of this page to read more and see some great examples.
                            """)
                            
                        // Transforming Views: Clip, size, scale, spin, and more
                        // https://www.hackingwithswift.com/quick-start/swiftui
                        Link(destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!) {
                            Text("Transforming Views: Clip, size, scale, spin, and more")
                        }

                    }

                }
                .padding(.bottom)

            }

        }
        .padding()
        .navigationTitle("Tutorials")

    }
}

struct TutorialsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TutorialsView()
        }
    }
}
