//
//  OnboardingView.swift
//  Sesi4PropertyWrapper
//
//  Created by Aditya Himawan on 25/01/24.
//

import SwiftUI

// Define an enum for button type
enum ButtonType {
    case primary
    case secondary
}

struct OnboardingView: View {
    private let tabs: [Onboarding] = Onboarding.data
    private let dotIndicator = UIPageControl.appearance()
    
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            // paramater selection untuk memperesentasikan tab
            TabView(selection: $selectedTab) {
                ForEach(tabs) { tab in
                    Group {
                        OnboardingSingleView(content: tab)
                    }
                    // tag untuk memonitor perubahan value
                    .tag(tab.tag)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeInOut, value: selectedTab)
            
            // Custom Dot :
            CustomDotIndicator(count: tabs.count, selectedTab: $selectedTab)
                .padding([.top, .bottom], 33)

            
//            Native Dot :
//            .indexViewStyle(
//                PageIndexViewStyle(
//                    backgroundDisplayMode: .always
//                )
//            )
//            .onAppear {
//                dotIndicator.currentPageIndicatorTintColor = UIColor(named: "Violet100")
//                dotIndicator.pageIndicatorTintColor = 
//                    UIColor(named: "Violet20")
//                dotIndicator.backgroundColor = .clear
//            }
            
            VStack {
                Button("Sign Up") {
                    print("test")
                }
                .buttonStyle(PrimaryButtonStyle(type: .primary))
                
                Button("Login") {
                    print("test")
                }
                .buttonStyle(PrimaryButtonStyle(type: .secondary))
            }
            .padding(.horizontal, 16)
        }
    }
}


// Button style to apply a custom style to answer buttons
struct PrimaryButtonStyle: ButtonStyle {
    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        var foregroundColor: Color
        var backgroundColor: Color
        
        switch type {
        case .primary:
            foregroundColor = .white
            backgroundColor = Color("Violet100")
        case .secondary:
            foregroundColor = Color("Violet100")
            backgroundColor = Color("Violet20")
        }
        
        return configuration.label
            .frame(width: 343, height: 56)
            .font(.custom("Inter", size: 18))
            .fontWeight(.semibold)
            .foregroundStyle(foregroundColor)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}


#Preview {
    OnboardingView()
}
