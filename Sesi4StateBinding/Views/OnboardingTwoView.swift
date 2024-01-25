//
//  OnboardingTwoView.swift
//  Sesi4StateBinding
//
//  Created by Aditya Himawan on 25/01/24.
//

import SwiftUI

struct OnboardingTwoView: View {
    private let tabs: [OnboardingTwo] = OnboardingTwo.data
    private let dotIndicator = UIPageControl.appearance()
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                ForEach(tabs) { tab in
                    Group {
                        OnboardingTwoSingleView(content: tab)
                    }
                    .tag(tab.tag)
                }
               
            }
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeInOut, value: selectedTab)
            .indexViewStyle(
                PageIndexViewStyle(
                    backgroundDisplayMode: .never
                )
            )
            
//            VStack {
//                Spacer()
//                CustomPageIndicator(count: tabs.count, selectedTab: $selectedTab)
//                    .padding(.bottom,30)
//            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingTwoView()
}
