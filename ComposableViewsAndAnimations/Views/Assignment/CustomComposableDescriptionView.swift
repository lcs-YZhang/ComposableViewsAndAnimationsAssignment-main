//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var scorePercent: CGFloat = 50.0
    
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
                        This is a composable view of the Completion Meter, which is show the score for the student.

                        """)
                    
                    Slider(value: $scorePercent, in: 0...100, step: 1.0) {
                        Text("Score")
                    }
                    
                }
                .padding(.bottom)
                
            }
            
            NavigationLink(destination: CustomComposableDescriptionView(fillToValue: scorePercent)) {
                SimpleListItemView(title: "Score percent",
                                   caption: "Will illustrate fill to \(String(format: "%.0f", scorePercent))%")
            }
            
        }
        .padding()
        .navigationTitle("My Composable View")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
